//week03_12_3D_sphere_translate_rotateY_lights
void setup(){
  size(400,400,P3D);//開啟 3D模式
}
void draw(){
  background(128);
  lights();//打光
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));//對Y軸旋轉
  sphere(200);
}
