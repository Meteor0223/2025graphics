//week09_6_save_saveStrings_loadStrings
void setup(){
  size(300,300);
  rect(10,10,80,80);
  rect(110,110,80,80);
  save("file.png");//這個範例可以把畫面存檔
  another = loadStrings("lines.txt");//如果讀到就有陣列
}
int x=10,y=10,ID=0;
void draw(){
  background(204);
  if(another!=null){
    int [] now =int(split(another[ID],' '));
    rect(now[0],now[1],80,80);
    ID= (ID+1) % another.length;
  }
  rect(x,y,80,80);
}
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  String now =x + " " + y;
  lines.add(now);//println(now);
}
ArrayList<String> lines = new ArrayList<String>();//ArrayList 資料結構
String [] another;//另一個讀到的字串的資料結構
void keyPressed(){
  String [] arr= new String[lines.size()];//傳統的Java陣列的資料結構
  lines.toArray(arr);//把ArrayList轉換成傳統陣列 以便存檔
  if(key=='s')saveStrings("lines.txt",arr);//按下s會存檔
}
