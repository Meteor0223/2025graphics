//week12_1_gundam_head_body_uparm_upuparm_hand
//修自week09_5_gundam_uparm_upuparm_hand_keyboard_mouse_rot
//加上week09_5_gundam_uparm_upuparm_hand_keyboard_mouse_rot
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
float []angle =new float[20];//準備20個關節
int ID=0;// 關節代碼 angle[ID]
void keyPressed(){
  if(key=='1')ID=1;
  if(key=='2')ID=2;
  if(key=='3')ID=3;
}
void mouseDragged(){
  angle[ID]+=mouseX-pmouseX;//x方向移動,改變對應關節角度
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
    rotateZ(radians(angle[1]));
    rotateY(radians(angle[3]));
    translate(4.1,-19.9);
    shape(uparm1,0,0);//右上手臂
    pushMatrix();
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找數值
      //println(mouseX/10.0,-mouseY/10.0);//印出數值  4.1 -16.9
      translate(-4.1,16.9);
      rotateX(radians(angle[2]));
      translate(4.1,-16.9);
      shape(hand1,0,0);//右手
    popMatrix();
  popMatrix();
  shape(upuparm2,0,0);//左肩膀
  shape(uparm2,0,0);//左上手臂
  shape(hand2,0,0);//左手
}
