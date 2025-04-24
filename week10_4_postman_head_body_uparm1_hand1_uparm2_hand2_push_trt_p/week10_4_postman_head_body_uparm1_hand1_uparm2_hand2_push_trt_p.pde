//week10_4_postman_head_body_uparm1_hand1_uparm2_hand2_push_trt_pop
PImage postman,head,body,Rarm,Rhand,Larm,Lhand,Rleg,Lleg;
void setup(){
  size(560,560);
  postman =loadImage("postman.png");
  head =loadImage("head.png");
  body =loadImage("body.png");
  Rarm =loadImage("Rarm.png");
  Rhand =loadImage("Rhand.png");
  Larm =loadImage("Larm.png");
  Lhand =loadImage("Lhand.png");
  Rleg =loadImage("Rleg.png");
  Lleg =loadImage("Lleg.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);//原圖
  fill(255,0,255,128);//半透紫色
  rect(0,0,560,560);//蓋上去
  //右手
  pushMatrix();
    translate(220,258);//再放回去
    rotate(radians(mouseX));
    translate(-220,-258);//放到旋轉中心
    image(Rarm,0,0);
    pushMatrix();
      translate(152,259);//再放回去
      rotate(radians(mouseY/5));
      translate(-152,-259);//放到旋轉中心
      image(Rhand,0,0);
    popMatrix();
  popMatrix();
  //左手
  pushMatrix();
    translate(325,256);//再放回去
    rotate(radians(-mouseX));
    translate(-325,-256);//放到旋轉中心
    image(Larm,0,0);
    pushMatrix();
      translate(392,254);//再放回去
      rotate(radians(-mouseY/5));
      translate(-392,-254);//放到旋轉中心
      image(Lhand,0,0);
    popMatrix();
  popMatrix();
  //右腳
  pushMatrix();
    translate(255,366);//再放回去
    rotate(radians(mouseY/5));
    translate(-255,-366);//放到旋轉中心
    image(Rleg,0,0);
  popMatrix();
  //左腳
  pushMatrix();
    translate(295,365);//再放回去
    rotate(radians(-mouseY/5));
    translate(-295,-365);//放到旋轉中心
    image(Lleg,0,0);
  popMatrix();
  //頭
  pushMatrix();
    translate(268,225);//再放回去
    rotate(radians(mouseX));
    translate(-268,-220);//放到旋轉中心
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  
}
