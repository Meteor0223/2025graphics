//week13_4_camera_chessboard_texture_front_left
//把貼圖和camera整合在一起
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);//有很多種貼圖模式
}//先用最簡單的NORMAL來畫,2個三角形,不像是3D透視效果
void draw(){//攝影機往前看 左有前後移動
  camera(mouseX,200,mouseY,mouseX,200,mouseY-10,0,1,0);
  background(128);
  beginShape();// 開始畫
  texture(img);//把圖片當貼圖
  vertex(0,0,0,0,0);//x,y,z, u,v
  vertex(400,0,0,1,0);
  vertex(400,400,0,1,1);
  vertex(0,400,0,0,1);
  endShape();  
  beginShape();// 開始畫
  texture(img);//把圖片當貼圖
  vertex(0,0,0,0,0);//x,y,z, u,v
  vertex(0,400,0,1,0);
  vertex(0,400,400,1,1);
  vertex(0,0,400,0,1);
  endShape();
}
