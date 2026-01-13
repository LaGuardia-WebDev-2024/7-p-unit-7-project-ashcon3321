PImage pyramidImg;

//🎯 Variable Declarations Go Here
var sunSize = 30;
var colorShade = 0;
var greenshade = 0;

//🟢 Setup - Runs Once to Set The Canvas
void setup() {
  size(400, 400);
  pyramidImg = loadImage("geometrydaddy.png");
}

//🟢 Draw Function - Runs on Repeat
void draw() {
  noStroke();

  // my peak sky
  background(82 + colorShade, 222 + colorShade, 240 + colorShade);

  // my peak sun
  fill(255 + colorShade, 204 + colorShade, 0 + colorShade);
  ellipse(200, 298, sunSize, sunSize);

  // my peak land
  fill(76 + greenshade, 168 + greenshade, 67 + greenshade);
  rect(0, 300, 400, 100);

  // pyramid head follows mouse
  image(pyramidImg, mouseX - 20, mouseY - 20, 120, 120);

  // my peak animation
  sunSize += 1.5;
  colorShade -= 1;
  greenshade -= 0.5;

  if (sunSize > 720) {
    sunSize = 30;
    colorShade = 0;
    greenshade = 0;
  }
}