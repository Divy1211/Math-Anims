double e = Math.sqrt(1-9.0/16.0);
void setup() {
  size(800, 800);
}
double a = 0,x,y,px,py;
void draw() {
  background(0);
  stroke(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  stroke(0,255,255);
  strokeWeight(8);
  point((float)(-4*e*50)+width/2,height/2);
  point((float)(4*e*50)+width/2,height/2);
  stroke(0,255,255);
  strokeWeight(4);
  fill(0,0);
  ellipse(width/2,height/2,400,300);
  x = 4*Math.cos(a)*50;
  y = 3*Math.sin(a)*50;
  strokeWeight(2);
  stroke(255,255,0);
  line((float)e*4*50+width/2,height/2,(float)x+width/2,(float)y+height/2);
  line((float)e*-4*50+width/2,height/2,(float)x+width/2,(float)y+height/2);
  double f1 = dist((float)e*4*50+width/2,height/2,(float)x+width/2,(float)y+height/2);
  double f2 = dist((float)e*-4*50+width/2,height/2,(float)x+width/2,(float)y+height/2);
  textSize(32);
  fill(255);
  text(Math.round(f1*100)/100.0,0,100);
  text(" + ",150,100);
  text(Math.round(f2*100)/100.0,200,100);
  text(" = ",350,100);
  text(Math.round(f1+f2),400,100);
  a+=0.02;
}
