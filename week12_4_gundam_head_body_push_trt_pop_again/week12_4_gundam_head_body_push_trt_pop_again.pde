//week12_4_gundam_head_body_push_trt_pop_again
//修自week12_2_gundam_head_body_uparm_upuparm_hand_angle
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
void keyPressed(){
  if(key=='0')ID=0;
  if(key=='1')ID=1;
  if(key=='2')ID=2;
  if(key=='3')ID=3;
  if(key=='4')ID=4;
  if(key=='5')ID=5;
  if(key=='6')ID=6;
  if(key=='7')ID=7;
  if(key=='8')ID=8;
  if(key=='9')ID=9;
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0 ;
void mouseDragged(){
  angleX[ID]+=radians(mouseX-pmouseX);//x方向移動,改變對應關節角度
  angleY[ID]+=radians(mouseY-pmouseY);//Y方向移動,改變對應關節角度
}
void draw(){
  background(204);
  translate(200,300 );
  sphere(3);//基準點
  scale(10,-10,10);
  
  pushMatrix();
    translate(0,22.5);
    rotateY(radians(angleX[0]));
    rotateX(radians(angleY[0]));
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
  shape(upuparm1,0,0);//右肩膀
  pushMatrix();
    translate(-4.1,19.9);
    rotateZ(radians(angleX[2]));
    rotateX(radians(angleY[2]));
    translate(4.1,-19.9);
    shape(uparm1,0,0);//右上手臂
    pushMatrix();
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動,一邊找數值
      //println(mouseX/10.0,-mouseY/10.0);//印出數值  4.1 -16.9
      translate(-4.1,16.9);
      rotateY(radians(angleX[3]));
      rotateX(radians(angleY[3]));
      translate(4.1,-16.9);
      shape(hand1,0,0);//右手
    popMatrix();
  popMatrix();
  shape(upuparm2,0,0);//左肩膀
  shape(uparm2,0,0);//左上手臂
  shape(hand2,0,0);//左手
}
