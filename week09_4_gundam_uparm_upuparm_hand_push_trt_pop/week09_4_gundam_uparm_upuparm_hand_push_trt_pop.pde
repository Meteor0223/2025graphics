//week09_4_gundam_uparm_upuparm_hand_push_trt_pop
PShape body,head,uparm1,upuparm1,hand1,hand2,uparm2,upuparm2;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  hand1=loadShape("hand1.obj");
  uparm2=loadShape("uparm2.obj");
  upuparm2=loadShape("upuparm2.obj");
  hand2=loadShape("hand2.obj");
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
    rotateZ(radians(mouseX));
    translate(4.1,-19.9);
    shape(uparm1,0,0);//右上手臂
    pushMatrix();
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找數值
      //println(mouseX/10.0,-mouseY/10.0);//印出數值  4.1 -16.9
      translate(-4.1,16.9);
      rotateX(radians(mouseY));
      translate(4.1,-16.9);
      shape(hand1,0,0);//右手
    popMatrix();
  popMatrix();
  shape(upuparm2,0,0);//左肩膀
  shape(uparm2,0,0);//左上手臂
  shape(hand2,0,0);//左手
}
