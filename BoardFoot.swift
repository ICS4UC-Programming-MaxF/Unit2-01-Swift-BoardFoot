// Calculates the required length to equal exactly 1 board foot (144 in³).
// 
// @param width  The width of the wood in inches.
// @param height The thickness/height of the wood in inches.
// @return The calculated length in inches.
// @author  MF-ROB
// @version 1.0
// @since   2026-24-09

import Foundation

// Function: calculates the length needed for 1 board foot
// 144 cubic inches = width x height x length, so length = 144 / (width x height)
func CalculateBoardFoot(width: Double, height: Double) -> Double {
    let length = 144.0 / (width * height)
    return length
}

// main: handles input, error checking, and output
func main() {
    // Get the width from the user
    print("Hello. Please enter the width (in inches): ", terminator: "")
    let widthText = readLine()

    // Get the height from the user
    print("Next, please enter the height (in inches): ", terminator: "")
    let heightText = readLine()

    // Error check: both inputs must be numbers greater than 0
    if let width = Double(widthText ?? ""), let height = Double(heightText ?? ""), width > 0, height > 0 {
        // Call the function and display the result
        let length = CalculateBoardFoot(width: width, height: height)
        print("The length needed for 1 board foot is \(String(format: "%.2f", length)) inches.")
    } else {
        print("Error: please enter a number greater than 0.")
    }
}

// Start the program
main()