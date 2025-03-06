//week03_05_mouse_cat_x_y
void setup(){
  size(400,400);
}
float x,y;//貓座標
void draw(){
  background(255);
  ellipse(mouseX,mouseY,40,20);
  ellipse(x,y,40,40);
  x=(x*4+mouseX)/5;
  y=(y*4+mouseY)/5;
}
