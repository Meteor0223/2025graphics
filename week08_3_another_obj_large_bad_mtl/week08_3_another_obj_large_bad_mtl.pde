//week08_3_another_obj_large_bad_mtl
PShape gundam;
void setup(){
  size(400,400,P3D);
  gundam=loadShape("FinalBaseMesh.obj");//讀入3D模型
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
}
