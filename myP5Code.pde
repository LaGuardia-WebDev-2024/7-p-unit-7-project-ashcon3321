PImage pyramidImg;

//🎯 Variables
float sunSize = 30;
float colorShade = 0;
float greenshade = 0;

//🟢 Setup
void setup() {
  size(400, 400);
  pyramidImg = loadImage("geometrydaddy.png");
}

//🟢 Draw
void draw() {
  noStroke();

  // sky
  background(82 + colorShade, 222 + colorShade, 240 + colorShade);

  // sun
  fill(255 + colorShade, 204 + colorShade, 0 + colorShade);
  ellipse(200, 298, sunSize, sunSize);

  // land
  fill(76 + greenshade, 168 + greenshade, 67 + greenshade);
  rect(0, 300, 400, 100);

  // image follows mouse
  image(pyramidImg, mouseX - 20, mouseY - 20, 120, 120);

  // animation
  sunSize += 1.5;
  colorShade -= 1;
  greenshade -= 0.5;

  if (sunSize > 720) {
    sunSize = 30;
    colorShade = 0;
    greenshade = 0;
  }
}