float x, y, CentrX, CentrY, Csize, a, b;
int n, amp;

void setup() {
  size(700, 700);
  noFill();
  stroke(255, 220);
  strokeWeight(2);
  smooth();

  CentrX = width/2;
  CentrY = height/2;
  amp = 20;
  n = 6;
  Csize = 200;
}

void draw() {
  background(0);
  
  translate(CentrX, CentrY);
  rotate(radians(a));
  
  beginShape();
  for (float theta = 0; theta < 360; theta++) {
    float theta2 = radians(theta);
    b = map(sin(a/10)*cos(a/20), -1, 1, -1.5, 0.5);
    x = (Csize + b * amp * sin(n*theta2) ) * cos(theta2);
    y = (Csize + b * amp * sin(n*theta2) ) * sin(theta2);
    vertex(x, y);
  }
  endShape(CLOSE);

  beginShape();
  for (float theta = 0; theta < 360; theta++) {
    float theta2 = radians(theta);
    b = map(sin(a/20)*sin(a/10), -1, 1, -2, 0.5);
    x = (Csize + b * amp * cos(n * theta2)) * sin(theta2);
    y = (Csize + b * amp * cos(n * theta2)) * cos(theta2);
    vertex(x, y);
  }
  endShape(CLOSE);

  a = a + 0.3;
}