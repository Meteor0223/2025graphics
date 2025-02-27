//week02_5a_combine_02_4_and_02_3_bad
//要描圖,卻出錯
PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.png");
}//記得拉到程式裡
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色,alpha值是200
  rect(0,0,400,400);//畫超大的四邊形把它蓋住
  //上面是week02_4,下面是week02_3 但線印不上去
  stroke(255,0,0);//紅線
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}
