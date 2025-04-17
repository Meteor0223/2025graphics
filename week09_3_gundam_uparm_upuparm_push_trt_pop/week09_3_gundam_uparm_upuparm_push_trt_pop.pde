//week09_3_gundam_uparm_upuparm_push_trt_pop
PShape body,head,uparm1,upuparm1,uparm2,upuparm2;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  uparm2=loadShape("uparm2.obj");
  upuparm2=loadShape("upuparm2.obj");
}
void draw(){
  background(204);
  translate(200,300 );
  sphere(3);//基準點
  scale(10,-10,10);
  
  shape(head,0,0);
  shape(body,0,0);
  shape(upuparm1,0,0);//右肩膀
  pushMatrix();
    translate(-4.1,19.9);
    rotateX(radians(mouseY));
    translate(4.1,-19.9);
    //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找數值
    //println(mouseX/10.0,-mouseY/10.0);//印出數值  4.1 -19.9
    shape(uparm1,0,0);//右上手臂
  popMatrix();
  shape(upuparm2,0,0);//左肩膀
  shape(uparm2,0,0);//左上手臂
}
