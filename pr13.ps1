# attempt at using loops for menus but didn't figure out a good way to display an error for incorrect choices
$quit = $null
do {
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
    # asks the user for input
    $choice = Read-Host "Enter your choice"

    Switch ($choice) {
        1 {
            do {
                $back = $null
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
                # asks the user for input
                $choice = Read-Host "Enter your choice"

                Switch ($choice) {
                    1 {$back = $true}
                    2 {$quit = $true}
                    default {
                    Write-Host "Enter listed options"
                    }
                }
            } until ($back)
        }
        2 {
            cls
            Write-Host "            Area of Rectangle" -ForegroundColor Green
            Write-Host " "

            # asks the user for input
            $width = Read-Host "Enter the width of the rectangle"
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
            # asks the user for input
            $choice = Read-Host "Enter your choice"

            Switch ($choice) {
                1 {}
                2 {$quit = $true}
                default {$error = $true}
            }
        }
        3 {
    
        }
        4 {
    
        }
        5 {$quit = $true}
        default {$error = $true}
    }
} until ( $quit )