//week04_05b_mouseX_mouseY_rotateZ_translate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
      translate(mouseX,mouseY);//移到畫面中心
      rotateZ(radians(frameCount));//對z軸旋轉
      translate(0,-50);//把下端,移到中心
      box(10,100,10);//可轉動線條
}
