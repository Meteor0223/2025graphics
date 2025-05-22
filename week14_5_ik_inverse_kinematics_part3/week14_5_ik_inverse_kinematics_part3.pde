//week14_5_ik_inverse_kinematics_part3
void setup(){
  size(400,400);
  for(int i=0;i<6;i++){
    p[i]=new PVector(200,350-50*i);
  }
}
PVector [] p= new PVector[6];//有5個頂點
void draw(){
  background(255);
  for(int i=0;i<6;i++){//用迴圈畫點畫線
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅色圈
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);//黑色字
    text("p:"+i,p[i].x+10,p[i].y);
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠也有個小點要控制座標移動
  line(p[0].x,p[0].y,mouseX,mouseY);
}
