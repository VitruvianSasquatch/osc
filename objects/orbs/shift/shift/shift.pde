int circs[][] = new int[5][3];

void setup() {
  size(400, 400);
  noFill();
  strokeWeight(5);
  stroke(150, 255, 50, 128);
  for (int i = 0; i < 5; i++) {
    circs[i][0] = int(random(0, 400));
    circs[i][1] = int(random(0, 400));
    circs[i][2] = int(random(50, 300));
  }
}

void draw() {
  background(0, 200, 0);
  for (int i = 0; i < 5; i++) {
    ellipse(circs[i][0], circs[i][1], circs[i][2], circs[i][2]);
    circs[i][2] *= 1.1;
    if (circs[i][2] >= 300) {
      circs[i][0] = int(random(0, 400));
      circs[i][1] = int(random(0, 400));
      circs[i][2] = int(random(50, 300));
    }
  }
}
