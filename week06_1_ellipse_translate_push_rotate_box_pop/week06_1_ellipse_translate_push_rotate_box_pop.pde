//week06_1_ellipse_translate_push_rotate_box_pop
//有點模仿第4週的程式
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西,放到畫面中心
  pushMatrix();
    rotateZ(radians(frameCount));//對中心旋轉
    box(100,30,30);//橫的棒子
  popMatrix();
}
