//week02_6_ArrayList_ArrayList_Integer_for_for_mousePressed_new_add
//不要一筆畫一直畫
ArrayList<Integer> x,y;//先有2個還沒準備好的資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.png");
}//記得拉到程式裡
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色,alpha值是200
  rect(0,0,400,400);//畫超大的四邊形把它蓋住
  //上面是week02_4,下面是用迴圈,從資料結構取出來
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer> x=xx.get(I);
    ArrayList<Integer> y=yy.get(I);
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下後建立新的資料結構
  x =new ArrayList<Integer>();xx.add(x);
  y =new ArrayList<Integer>();yy.add(y);
}
