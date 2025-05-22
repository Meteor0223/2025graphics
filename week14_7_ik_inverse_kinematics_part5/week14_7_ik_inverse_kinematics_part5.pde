//week14_7_ik_inverse_kinematics_part5
void setup(){
  size(400,400);
  for(int i=0;i<6;i++){
    p[i]=new PVector(200,350-50*i);
  }
}
PVector [] p= new PVector[6];//有5個頂點
void draw(){
  background(255);
  for(int i=0;i<2;i++){//用迴圈畫點畫線
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅色圈
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);//黑色字
    text("p:"+i,p[i].x+10,p[i].y);
  }
  PVector now =new PVector(mouseX,mouseY);
  PVector v =PVector.sub(now,p[0]).normalize().mult(50);//短向量
  //因為長度限制為50,所以長向量先長度變成1在乘上50
  p[1].x=p[0].x+v.x;//新位置是中心在加50
  p[1].y=p[0].y+v.y;
  ellipse(mouseX,mouseY,6,6);//滑鼠也有個小點要控制座標移動
  line(p[0].x,p[0].y,mouseX,mouseY);
}
