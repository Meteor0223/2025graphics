//week04_14_sun_earth_moon_setTexture
PShape earth,moon,sun;
void setup(){
  size(400,400,P3D);
  earth=createShape(SPHERE,30);
  PImage img_earth=loadImage("earth.jpg");
  earth.setTexture(img_earth);
  moon=createShape(SPHERE,10);
  PImage img_moon=loadImage("moon.jpg");
  moon.setTexture(img_moon);
  sun=createShape(SPHERE,50);
  PImage img_sun=loadImage("sun.jpg");
  sun.setTexture(img_sun);
} 
void draw(){
  background(128);
  translate(width/2,height/2);
  shape(sun);//太陽
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount));
    shape(earth);//地球
    pushMatrix();
    translate(50,0);
    rotateY(radians(frameCount));
    shape(moon);//月亮
    popMatrix();
  popMatrix();
}
