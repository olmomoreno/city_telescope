/*****************************************************************
**  SCENE: This scene design consist of 1 interactive element,  **
**  it displays a green square that bounces horizontaly. The    **
**  displacement speed can be modified using the slider in the  **
**  card control area.                                          **
*****************************************************************/

//Images
PImage rocketIcon;
PImage city_1;
PImage city_2;

// Sketch's fonts
PFont robotoRegular12;
PFont robotoRegular16;
PFont robotoRegular20;
PFont robotoRegular24;
PFont robotoRegular50;

// Color definitions
color green1 = color(29,185,84); 
color green2 = color(35, 124, 102); 
color gray1 = color(33, 33, 33);
color gray2 = color(83, 83, 83);
color white = color(255);
color black = color(0);

// Variable definitions
int sliderButtonX = 32;
boolean direction = true;
boolean overSlider = false;
boolean locked = false;
int zoomValue = 1;

void setup() {

   // Processing window size
  size(600, 400);

  // Loads image
  rocketIcon = loadImage("images/rocket_launch_24dp_FFFFFF.png");
  city_1 = loadImage("images/pexels-13nuance-929678.jpg"); // Photo by Александр Прокофьев: https://www.pexels.com/photo/bird-s-eye-view-of-city-during-evening-929678/
  city_2 = loadImage("images/pexels-lkloeppel-466685.jpg"); // Photo by Lukas Kloeppel: https://www.pexels.com/photo/empire-state-building-new-york-466685/

  // Creates font
  robotoRegular12 = createFont("fonts/Roboto-Regular.ttf", 12);
  robotoRegular16 = createFont("fonts/Roboto-Regular.ttf", 16);
  robotoRegular20 = createFont("fonts/Roboto-Regular.ttf", 20);
  robotoRegular24 = createFont("fonts/Roboto-Regular.ttf", 24);
  robotoRegular50 = createFont("fonts/Roboto-Regular.ttf", 50);
}

void draw() {

  background(black);

  int topZoomValue = 20;
  int imageWidthCoefficient  = (city_1.width - width)/topZoomValue;
  int imageHeightCoefficient = (city_1.height - height)/topZoomValue;
  int imageWidth  = ((zoomValue - 1) * imageWidthCoefficient) + width;
  int imageHeight = ((zoomValue - 1) * imageHeightCoefficient) + height;

  image(city_1, 0, 0, imageWidth, imageHeight);

  // Draws the telescope effect
  int ellipseSize = 800;
  noFill();
  strokeWeight(1000);
  stroke(0);
  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);

  // Paddings (units -> px)
  int padding28 = 28;
  int statusBarHeight = 24;
  int topAppBarHeight = 45;
  int margin = 16;

  // Font size
  int fontSize12 = 12;
  int fontSize16 = 16;
  int fontSize20 = 20;
  int fontSize24 = 24;
  int fontSize50 = 50;

  // Draws card/working area separation line
  int cardAreaWidth = 200;
  strokeWeight(1);
  stroke(white);
  line(cardAreaWidth, 0, cardAreaWidth, height);

  // Draws Top App Bar
  noStroke();
  fill(gray1);
  rect(0, statusBarHeight, cardAreaWidth, topAppBarHeight);

  // Draws card/working area background
  fill(black);
  rect(0, 0, cardAreaWidth, height);

  // Draws card
  int cardWidth = cardAreaWidth - (margin * 2);
  int roundCorners = 25;
  fill(gray2);
  rect(margin, statusBarHeight + topAppBarHeight + margin, cardWidth, height - statusBarHeight - topAppBarHeight - (margin * 2), roundCorners);

  // Draws status bar image
  int iconSize = 16;
  int iconOffset = 4;
  image(rocketIcon, cardAreaWidth - margin - iconSize, iconOffset, iconSize, iconSize);

  // Writes clock time
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  int textOffsetHeight = 6;
  String time = nf(h, 2) + ":" + nf(m, 2);
  fill(white);
  textFont(robotoRegular16, fontSize16);
  text(time, margin, statusBarHeight - textOffsetHeight);

  // Writes Top App Bar text
  textOffsetHeight = 15;
  String proLab = "Processing Lab";
  textFont(robotoRegular24, fontSize24);
  text(proLab, margin, statusBarHeight + topAppBarHeight - textOffsetHeight);

  // Writes card title
  String cardTitle = "City telescope";
  textFont(robotoRegular20, fontSize20);
  text(cardTitle, margin * 2, statusBarHeight + topAppBarHeight + margin + padding28);

  // Writes card subtitle
  String cardSubTitle = "Interactive sketch";
  textFont(robotoRegular12, fontSize12);
  text(cardSubTitle, margin * 2, statusBarHeight + topAppBarHeight + margin + (padding28 * 2));

  // Writes card number variable
  textFont(robotoRegular50, fontSize50);
  text(zoomValue, margin * 2, statusBarHeight + topAppBarHeight + margin + (padding28 * 5));

  // Writes card number variable subtitle
  String cardNumVArSub = "Telescope zoom";
  textFont(robotoRegular12, fontSize12);
  text(cardNumVArSub, margin * 2, statusBarHeight + topAppBarHeight + margin + (padding28 * 6));

  // Draws slider line
  strokeWeight(4);
  stroke(white);
  line((margin * 2), statusBarHeight + topAppBarHeight + margin + (padding28 * 8), cardWidth, statusBarHeight + topAppBarHeight + margin + (padding28 * 8));

  // Draws slider button
  int circleSize = 20;
  strokeWeight(1);

  // Checks if mouse is over slider's button
  if(locked == true){ // Permit when mouse is pressed

    if((mouseY >= statusBarHeight + topAppBarHeight + margin + (padding28 * 8) - (circleSize/2)) && // Is the mouse over top half of slider button?
       (mouseY <= statusBarHeight + topAppBarHeight + margin + (padding28 * 8) + (circleSize/2))){  // Is the mouse over bottom half of slider button?

      if((mouseX > (margin * 2)) && (mouseX < cardWidth - circleSize)){ // Is the mouse over the slider line?
        sliderButtonX = mouseX;
        float sldrX = map(sliderButtonX, margin * 2, cardWidth - circleSize, 1, 21);
        zoomValue = int(sldrX);
      }
    }
  }
 
  circle(sliderButtonX + (circleSize/2), statusBarHeight + topAppBarHeight + margin + (padding28 * 8) + (circleSize/32), circleSize);
}

// Interruption when mouse pressed event
void mousePressed() {
  locked = true;
}

// void mouseDragged() {
// }

void mouseReleased() {
  locked = false;
}