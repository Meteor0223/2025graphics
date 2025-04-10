//week08_2_PShape_gundam_setup_draw_push_scale_shape_pop
//轉動他,要改成互動式的程式風格
PShape gundam;
void setup(){
  size(400,400,P3D);
  gundam=loadShape("Gundam.obj");//讀入3D模型
}
void draw(){
  background(128);
  translate(width/2,height/2);
  pushMatrix();
    translate(0,100);
    scale(10,-10,10);
    rotateY(radians(frameCount));
    shape(gundam,0,0); //畫出3D模型
  popMatrix();
  pushMatrix();
    translate(100,100,0);
    scale(10,-10,10);
    shape(gundam,0,0); //畫出3D模型
  popMatrix();
}
