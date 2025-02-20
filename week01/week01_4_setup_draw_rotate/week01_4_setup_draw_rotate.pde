// week01_4_setup_draw_rotate
void setup(){
  size(400,400, P3D); //設定好全部的OpenGL
}
float angle=0;
void draw(){
  rotate(angle);
  angle +=0.01;
  size(400,400, P3D); //設定好全部的OpenGL 
  beginShape (TRIANGLES); //開始畫 三角形s 
  fill(255,0,0); vertex(0, 200); 
  fill(0,255,0); vertex (400, 0); 
  fill(0,0,255); vertex(400,400); 
  endShape();
}
