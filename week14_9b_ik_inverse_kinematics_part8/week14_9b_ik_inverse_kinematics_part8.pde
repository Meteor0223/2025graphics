//week14_9b_ik_inverse_kinematics_part8
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){
    p[i]=new PVector(200,350-L*i);
  }
}
int N=20,L=300/N;//本來6點距離50
PVector [] p= new PVector[N];//有5個頂點
void draw(){
  background(255);
  for(int i=0;i<N;i++){//用迴圈畫點畫線
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅色圈
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);//黑色字
    text("p:"+i,p[i].x+10,p[i].y);
  }
  p[N-1].x=mouseX;
  p[N-1].y=mouseY;
  for(int i=N-2;i>0;i--){
    PVector v =PVector.sub(p[i+1],p[i]).normalize().mult(L);//短向量
    //因為長度限制為L,所以長向量先長度變成1在乘上L
    p[i].x=p[i+1].x-v.x;//新位置是中心在減L
    p[i].y=p[i+1].y-v.y;
  }
  for(int i=1;i<N;i++){
    PVector v =PVector.sub(p[i],p[i-1]).normalize().mult(L);//短向量
    p[i].x=p[i-1].x+v.x;//新位置是中心在加L
    p[i].y=p[i-1].y+v.y;
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠也有個小點要控制座標移動
  //line(p[5].x,p[5].y,mouseX,mouseY);
}
