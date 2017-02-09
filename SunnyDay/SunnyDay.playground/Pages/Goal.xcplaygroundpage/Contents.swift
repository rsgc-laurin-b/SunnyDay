//: # Your goal
//: ![goal](scenario.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 500 pixels wide by 400 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 500, height: 400)


// setting background to blue
canvas.fillColor = Color(hue: 195, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 400)

// Yellow lines

//Lower half
canvas.lineColor = Color.yellow
for xPos in stride(from: 0, to: 500, by:100){
    canvas.drawLine(fromX: 0, fromY: 400, toX: xPos, toY: 0, lineWidth: 5)
}

// Upper Half
canvas.lineColor = Color.yellow
for yPos in stride(from: 0, to: 500, by:100){
    canvas.drawLine(fromX: 0, fromY: 400, toX: 500, toY: yPos, lineWidth: 5)
}

// Orange Lines
canvas.lineColor = Color.orange
for xPos in stride(from: 50, to: 450, by:100){
    canvas.drawLine(fromX: 0, fromY: 400, toX: xPos, toY: 0, lineWidth: 5)
}

canvas.lineColor = Color.orange
for yPos in stride(from: 50, to: 450, by:100){
    canvas.drawLine(fromX: 0, fromY: 400, toX: 500, toY: yPos, lineWidth: 5)
}

// Sun
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: 0, centreY: 400, width: 100, height: 100)

// Clouds

canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 500, centreY: 350, width: 100, height: 100)

canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 450, centreY: 400, width: 100, height: 100)


// Draw a circle in the middle of the canvas without a fill


// First loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.purple
canvas.drawEllipse(centreX: 250, centreY: 0, width: 225, height: 200)

// Second Loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.blue
canvas.drawEllipse(centreX: 250, centreY: 0, width: 275, height: 250)


// Third Loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.green
canvas.drawEllipse(centreX: 250, centreY: 0, width: 325, height: 300)


// Fourth Loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.yellow
canvas.drawEllipse(centreX: 250, centreY: 0, width: 375, height: 350)

// fifth Loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.orange
canvas.drawEllipse(centreX: 250, centreY: 0, width: 425, height: 400)

// Sixth Loop
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.red
canvas.drawEllipse(centreX: 250, centreY: 0, width: 475, height: 450)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
