#include <iostream>
#include <limits> // Required for std::numeric_limits

void showMenu() {
    std::cout << "1. Option 1" << std::endl;
    std::cout << "2. Option 2" << std::endl;
    std::cout << "3. Option 3" << std::endl;
    std::cout << "4. Exit" << std::endl;
    std::cout << "Enter your choice: ";
}

int main() {
    int choice;
    do {
        showMenu();
        // Clear the error state and ignore any remaining characters in the input buffer
        std::cin >> choice;
        if (std::cin.fail()) {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            choice = -1; // Set choice to an invalid value to re-display the menu
            std::cout << "Invalid input. Please enter a number between 1 and 4." << std::endl;
        }

        switch (choice) {
            case 1:
                std::cout << "You chose Option 1." << std::endl;
                // Add code for Option 1 functionality
                break;
            case 2:
                std::cout << "You chose Option 2." << std::endl;
                // Add code for Option 2 functionality
                break;
            case 3:
                stdcout << "You chose Option 3." << std::endl;
                // Add code for Option 3 functionality
                break;
            case 4:
                std::cout << "Exiting program." << std::endl;
                break;
            default:
                if (choice != -1) {
                    std::cout << "Invalid choice. Please try again." << std::endl;
                }
        }
    } while (choice != 4);
    return 0;
}