//week10_2_postman_head_body_push_trt_pop
PImage postman,head,body;
void setup(){
  size(560,560);
  postman =loadImage("postman.png");
  head =loadImage("head.png");
  body =loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);//原圖
  fill(255,0,255,128);//半透紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(268,225);//再放回去
    rotate(radians(mouseX));
    translate(-268,-220);//放到旋轉中心
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
