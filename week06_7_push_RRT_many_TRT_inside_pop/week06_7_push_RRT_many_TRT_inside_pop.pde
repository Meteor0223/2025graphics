//week06_7_push_RRT_many_TRT_inside_pop
//慢慢組合出機器手臂
void setup(){
  size(500,800,P3D);//step00 把視窗變長
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();
  //step05 往右縮排
    if(mousePressed && mouseButton==RIGHT)rotateY(radians(frameCount));//step02 右鍵旋轉
    if(mousePressed && mouseButton==RIGHT)rotateZ(radians(frameCount));//step02 右鍵旋轉
    translate(0,-100);
    box(50,200,25);//手臂
    pushMatrix();
      translate(0,-100);//step00掛到手臂上,0,-100放入
      rotateZ(radians(frameCount));//step00 if刪掉
      translate(100,0);
      box(200,50,25);// 手肘
      //step03 往右縮排
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50);//手腕
      popMatrix();
    popMatrix();
  popMatrix();
}
float x=0,y=0;//會動的位置
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+" y:"+y);//印出來
}
