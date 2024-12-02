# Use functions to print out different menus for calulcating shape areas
# main menu function
function mainmenu {
    cls

    # prints the menu interface
    Write-Host "            Calculator" -ForegroundColor Green
    Write-Host " "
    Write-Host "            Main Menu" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "Please select the option to perform the respective task" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green
    Write-Host " "
    
    # Keep asking until a valid choice is made
    while ($true) {
        # asks the user for input
        $choice = Read-Host "Enter your choice"
        # each switch is a function for a different menu
        Switch ($choice) {
            1 {
                square
            }
            2 {
                rectangle
            }
            3 {
                circle
            }
            4 {
                triangle
            }
            5 {
                exit
            }
            default {
                Write-Host "Invalid option. Please enter 1 or 2 only." -ForegroundColor Red
                # The loop will continue, allowing the user to try again
            }
        }
    }
}

function square {
    cls

    Write-Host "            Area of Square" -ForegroundColor Green
    Write-Host " "

    # asks the user for input
    $number = Read-Host "Enter the side of the square"
    $answer = [int]$number * [int]$number
    Write-Host ""
    Write-Host "$answer" -ForegroundColor Green
    Write-Host " "
    Write-Host " "
    Write-Host "Please select next option" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "1: Return to menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    Write-Host " "

    # Keep asking until a valid choice is made
    while ($true) {
        # asks the user for input
        $choice = Read-Host "Enter your choice"
        Switch ($choice) {
            1 {
                mainmenu
            }
            2 {
                exit
            }
            default {
                Write-Host "Invalid option. Please enter 1 or 2 only." -ForegroundColor Red
                # The loop will continue, allowing the user to try again
            }
        }
    }
}

function rectangle {
    cls


    Write-Host "            Area of Rectangle" -ForegroundColor Green
    Write-Host " "

    # asks the user for input
    $width = Read-Host "Enter the width of the rectangle"
    Write-Host ""
    $length = Read-Host "Enter the length of the rectangle"
    $answer = [int]$width * [int]$length
    Write-Host ""
    Write-Host "$answer" -ForegroundColor Green
    Write-Host " "
    Write-Host " "
    Write-Host "Please select next option" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "1: Return to menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    Write-Host " "

    # Keep asking until a valid choice is made
    while ($true) {
        # asks the user for input
        $choice = Read-Host "Enter your choice"
        Switch ($choice) {
            1 {
                mainmenu
            }
            2 {
                exit
            }
            default {
                Write-Host "Invalid option. Please enter 1 or 2 only." -ForegroundColor Red
                # The loop will continue, allowing the user to try again
            }
        }
    }
}

function circle {
    cls


    Write-Host "            Area of Circle" -ForegroundColor Green
    Write-Host " "

    # asks the user for input
    $radius = Read-Host "Enter the radius of the circle"

    # Use [Math]::PI for precision
    $answer = [Math]::PI * [Math]::Pow($radius, 2)
    # Round to 2 decimal places for readability
    $answer = [Math]::Round($answer, 2)

    Write-Host ""
    Write-Host "$answer" -ForegroundColor Green
    Write-Host " "
    Write-Host " "
    Write-Host "Please select next option" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "1: Return to menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    Write-Host " "

    # Keep asking until a valid choice is made
    while ($true) {
        # asks the user for input
        $choice = Read-Host "Enter your choice"
        Switch ($choice) {
            1 {
                mainmenu
            }
            2 {
                exit
            }
            default {
                Write-Host "Invalid option. Please enter 1 or 2 only." -ForegroundColor Red
                # The loop will continue, allowing the user to try again
            }
        }
    }
}

function triangle {
    cls

    Write-Host "            Area of Triangle" -ForegroundColor Green
    Write-Host " "

    # asks the user for input
    $width = Read-Host "Enter the width of the triangle"
    $height = Read-Host "Enter the height of the triangle"
    $answer = [int]$width * [int]$height / 2

    Write-Host ""
    Write-Host "$answer" -ForegroundColor Green
    Write-Host " "
    Write-Host " "
    Write-Host "Please select next option" -ForegroundColor Yellow
    Write-Host " "
    Write-Host "1: Return to menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    Write-Host " "

    # Keep asking until a valid choice is made
    while ($true) {
        # asks the user for input
        $choice = Read-Host "Enter your choice"
        Switch ($choice) {
            1 {
                mainmenu
            }
            2 {
                exit
            }
            default {
                Write-Host "Invalid option. Please enter 1 or 2 only." -ForegroundColor Red
                # The loop will continue, allowing the user to try again
            }
        }
    }
}

# starts the main menu function
mainmenu