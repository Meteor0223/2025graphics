//week08_4_gundam_body_head
//慢慢把「切割開的模式,逐一組合起來
PShape body,head;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100 );
  sphere(10);//基準點
  scale(10,-10,10);
  pushMatrix();
    translate(0,22.5);
    rotateY(radians(x));
    rotateX(radians(-y));
    translate(0,-22.5);
    println(x/10,y/10);//印出座標
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y-=mouseY-pmouseY;
}
