//week13_1_processsing_video
//Sketch - Libraary - Manage Libraries...安裝 video
//教學 https://processing.org/tutorials/video
import processing.video.*;
//有視訊鏡頭的,用這個版本
Capture video;//有鏡頭
//Movie movie;//沒鏡頭
void setup(){
  size(640,480);//常見的視訊
  video = new Capture(this,640,480);
  video.start();//打開視訊
  
  //movie = new Movie(this,"street.mov");//讀檔案
  //movie.loop();
}
void draw(){
  if(video.available()) video.read();
  image(video,0 ,0);
  
  //if(movie.available()) movie.read();
  //image(movie,0 ,0);
}
