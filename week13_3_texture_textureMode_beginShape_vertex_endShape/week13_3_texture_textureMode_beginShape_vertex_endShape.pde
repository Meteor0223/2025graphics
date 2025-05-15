//week13_3_texture_textureMode_beginShape_vertex_endShape
//先教貼圖 ,之後加進去
//https://processing.org/reference/texture_.html
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);//有很多種貼圖模式
}//先用最簡單的NORMAL來畫,2個三角形,不像是3D透視效果
void draw(){
  background(128);
  beginShape();// 開始畫
  texture(img);//把圖片當貼圖
  vertex(40, 80, 0, 0);//4個頂點vertex的四邊形,會裁出2個三角形
  vertex(320, 20, 1, 0);
  vertex(380, 360, 1, 1);
  vertex(160, 380, 0, 1);
  endShape();  
  
}
