//week10_3_postman_head_body_uparm1_hand1_push_trt_pop
PImage postman,head,body,Rarm,Rhand;
void setup(){
  size(560,560);
  postman =loadImage("postman.png");
  head =loadImage("head.png");
  body =loadImage("body.png");
  Rarm =loadImage("Rarm.png");
  Rhand =loadImage("Rhand.png");
  
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
  
  //頭
  pushMatrix();
    translate(268,225);//再放回去
    rotate(radians(mouseX));
    translate(-268,-220);//放到旋轉中心
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  
}
