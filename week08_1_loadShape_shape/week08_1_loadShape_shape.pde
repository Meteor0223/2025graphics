//week08_1_loadShape_shape
size(400,400,P3D);//要有P3D的OpenGL 3D 功能
PShape gundam=loadShape("Gundam.obj");//讀入3D模型
translate(width/2,height/2);
pushMatrix();
  translate(0,100);
  scale(10,-10,10);
  shape(gundam,0,0); //畫出3D模型
popMatrix();
