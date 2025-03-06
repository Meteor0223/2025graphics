//week03_11_3D_sphere_translate_rotateY
void setup(){
  size(400,400,P3D);//開啟 3D模式
}
void draw(){
  background(128);
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));//對Y軸旋轉
  sphere(200);
}
