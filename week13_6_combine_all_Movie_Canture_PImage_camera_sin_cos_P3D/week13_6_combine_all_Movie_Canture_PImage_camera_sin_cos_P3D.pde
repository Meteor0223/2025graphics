//week13_6_combine_all_Movie_Canture_PImage_camera_sin_cos_P3D
//今天教的都加進來
//street.mov 及chessboard.png 都拉進來
import processing.video.*;
Movie movie;
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
  video = new Capture(this,640,480);
  video.start();
  movie = new Movie(this,"street.mov");
  movie.loop();
}
float x=200,y=200,z=200,angle=-90;
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
Capture video;//有鏡頭再開
void draw(){
  if(movie.available()) movie.read();
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
  translate(0,0,0.1);
  image(movie,0,0,360,240);
  if(video.available()) video.read();
  beginShape();// 左邊的牆
  texture(video);
  vertex(0,0,0,0,0);//x,y,z, u,v
  vertex(0,400,0,1,0);
  vertex(0,400,400,1,1);
  vertex(0,0,400,0,1);
  endShape();
  
}
