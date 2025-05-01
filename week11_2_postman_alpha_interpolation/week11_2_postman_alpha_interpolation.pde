//week11_2_postman_alpha_interpolation
//修改自week11_1_postman_saveString_loadStrings
PImage postman,head,body,Rarm,Rhand,Larm,Lhand,Rleg,Lleg;
float []angle =new float[20];//準備20個關節
int ID=0;// 關節代碼 angle[ID]
void mouseDragged(){
  angle[ID]+=mouseX-pmouseX;//x方向移動,改變對應關節角度
}
void keyPressed(){
  if(key=='1')ID=1;
  if(key=='2')ID=2;
  if(key=='3')ID=3;
  if(key=='4')ID=4;
  if(key=='5')ID=5;
  if(key=='6')ID=6;
  if(key=='7')ID=7;
  if(key=='p'){//按了r,想要內插中間的結果
    float [] oldAngle = float(split(lines.get(R),' '));
    float [] newAngle = float(split(lines.get((R+1)%lines.size()),' '));
    float alpha = (frameCount%30)/30.0;//介於0.0~1.0中間值
    for(int i=0;i<20;i++)angle[i]=oldAngle[i]*(1-alpha)+newAngle[i]*alpha;
  }
  if(key=='r'){//讀入
    if(R==0){
      String [] file = loadStrings("angles.txt");
      if(file!=null){//如果有檔案
        for(int i=0;i<file.length;i++){
          lines.add(file[i]);
        }
      }
    }
    if(R<lines.size()){
      float [] now = float(split(lines.get(R),' '));
      for(int i=0;i<20;i++)angle[i]=now[i];
      R=(R+1)%lines.size();
    }  
  }
  if(key=='s'){//存檔角度
    String now="";
    for(int i=0;i<20;i++){
      now +=angle[i]+" ";//全部塞到now裡,記得加空格
    }
    lines.add(now);
    String [] arr= new String[lines.size()];//傳統的Java陣列的資料結構
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
  }
}
int R = 0;
ArrayList<String> lines = new ArrayList<String>();//放移動結果
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
    rotate(radians(angle[1]));
    translate(-220,-258);//放到旋轉中心
    image(Rarm,0,0);
    pushMatrix();
      translate(152,259);//再放回去
      rotate(radians(angle[2]));
      translate(-152,-259);//放到旋轉中心
      image(Rhand,0,0);
    popMatrix();
  popMatrix();
  //左手
  pushMatrix();
    translate(325,256);//再放回去
    rotate(radians(angle[3]));
    translate(-325,-256);//放到旋轉中心
    image(Larm,0,0);
    pushMatrix();
      translate(392,254);//再放回去
      rotate(radians(angle[4]));
      translate(-392,-254);//放到旋轉中心
      image(Lhand,0,0);
    popMatrix();
  popMatrix();
  //右腳
  pushMatrix();
    translate(255,366);//再放回去
    rotate(radians(angle[5]));
    translate(-255,-366);//放到旋轉中心
    image(Rleg,0,0);
  popMatrix();
  //左腳
  pushMatrix();
    translate(295,365);//再放回去
    rotate(radians(angle[6]));
    translate(-295,-365);//放到旋轉中心
    image(Lleg,0,0);
  popMatrix();
  //頭
  pushMatrix();
    translate(268,225);//再放回去
    rotate(radians(angle[7]));
    translate(-268,-220);//放到旋轉中心
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  
}
