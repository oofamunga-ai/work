/*
 * convert the following bash script into C++
 *
 * #!/bin/bash
 * (
 *     gzip -cd file1.ext.gz
 *     cat file2.ext
 * ) | grep '^filter' | 'sed s/search/replace/g'
 *
 */

#include <iostream>
#include <boost/bind.hpp>
#include <boost/iostreams/filtering_streambuf.hpp>
#include <boost/iostreams/device/file.hpp>
#include <boost/iostreams/filter/gzip.hpp>
#include <boost/iostreams/filter/regex.hpp>
#include <boost/iostreams/filter/grep.hpp>
#include <boost/iostreams/copy.hpp>

// http://hamigaki.sourceforge.jp/hamigaki/iostreams/concatenate.hpp
#include "concatenate.hpp"

namespace io = boost::iostreams;

int main(int argc, char const* argv[])
{
    io::file_source file1("file1.ext.gz");
    io::file_source file2("file2.ext");
    io::gzip_decompressor gzip;
    io::regex_filter sed(boost::regex("search"), "replace");
    io::grep_filter grep(boost::regex("^filter"));

    io::filtering_istreambuf in1(gzip | file1);
    io::filtering_istreambuf in2(file2);

    io::filtering_istreambuf combined(sed | grep | 
            hamigaki::iostreams::concatenate(
                boost::ref(in1),
                boost::ref(in2)
            )
        );

    io::copy(combined, std::cout);

    return 0;
}
