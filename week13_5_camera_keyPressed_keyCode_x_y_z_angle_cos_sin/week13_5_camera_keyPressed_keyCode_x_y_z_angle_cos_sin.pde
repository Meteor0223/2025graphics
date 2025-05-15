//week13_5_camera_keyPressed_keyCode_x_y_z_angle_cos_sin
//修改自week13_4_camera_chessboard_texture_front_left
//利用方向鍵來移動
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);//有很多種貼圖模式
}//先用最簡單的NORMAL來畫,2個三角形,不像是3D透視效果
float x=200,y=200,z=200,angle=180;
void keyPressed(){//按方向鍵
  if(keyCode==LEFT)angle--;
  if(keyCode==RIGHT)angle++;
  if(keyCode==UP){
    x += cos(radians(angle));
    z += sin(radians(angle));//   z是3D的前後 y是上下
  }
  if(keyCode==DOWN){
    x -= cos(radians(angle));
    z -= sin(radians(angle));//   z是3D的前後 y是上下
  }
}
void draw(){//攝影機往前看 左有前後移動
  if(keyPressed)keyPressed();//補強 讓他按下去會一直更新
  camera(x,y,z,x+cos(radians(angle)),y,z+sin(radians(angle)),0,1,0);
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
