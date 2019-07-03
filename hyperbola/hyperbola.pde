double e = Math.sqrt(9.0/16.0+1);
void setup() {
  size(800, 800);
}
double a = 0, x, y, px, py;
void draw() {
  background(0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  stroke(0, 255, 255);
  strokeWeight(8);
  point((float)(-4*e*50)+width/2, height/2);
  point((float)(4*e*50)+width/2, height/2);
  stroke(0, 255, 255);
  strokeWeight(4);
  noFill();
  pushMatrix();
  translate(width/2, height/2);
  double t = 0;
  beginShape();
  while (t < PI/2) {
    vertex((float)(4*1/Math.cos(t)*50), (float)(3*Math.tan(t)*50));
    t+=0.02;
  }
  endShape();
  t = PI/2+0.1;
  beginShape();
  while (t < 3*PI/2) {
    vertex((float)(4*1/Math.cos(t)*50), (float)(3*Math.tan(t)*50));
    t+=0.02;
  }
  endShape();
  t = 3.0*PI/2.0+0.1;
  beginShape();
  while (t < 2*PI) {
    vertex((float)(4*1/Math.cos(t)*50), (float)(3*Math.tan(t)*50));
    t+=0.02;
  }
  endShape();
  popMatrix();
  x = 4*1/Math.cos(a)*50;
  y = 3*Math.tan(a)*50;
  strokeWeight(2);
  stroke(255, 255, 0);
  line((float)e*4*50+width/2, height/2, (float)x+width/2, (float)y+height/2);
  line((float)e*-4*50+width/2, height/2, (float)x+width/2, (float)y+height/2);
  double f1 = dist((float)e*4*50+width/2, height/2, (float)x+width/2, (float)y+height/2);
  double f2 = dist((float)e*-4*50+width/2, height/2, (float)x+width/2, (float)y+height/2);
  textSize(32);
  fill(255);
  text("|", 0, 100);
  text(Math.round(f1*100)/100.0, 0, 100);
  text(" - ", 150, 100);
  text(Math.round(f2*100)/100.0, 200, 100);
  text("|", 360, 100);
  text(" = ", 400, 100);
  text(Math.round(abs((float)(f1-f2))), 450, 100);
  a+=0.02;
}
