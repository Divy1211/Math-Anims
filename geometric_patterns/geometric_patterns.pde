float a = 0, b = 0, co = 0, x1, y1, x2, y2;
void settings() {
  smooth(32);
  size(1000, 700);
}
void setup() {
  background(0);
  colorMode(HSB, 100);
}
void draw() {
  x1 = map(cos(a), -1, 1, 20, width-20);
  y1 = map(sin(a), -1, 1, 20, height-20);
  x2 = map(cos(b), -1, 1, 20, width-20);
  y2 = map(sin(b), -1, 1, 20, height-20);
  stroke(co++, 80, 80);
  if (co > 100)
    co = 0;
  if (frameCount%628 == 0)
    background(0);
  line(x1, y1, x2, y2);
  a+=0.02;
  b+=0.01;
}
