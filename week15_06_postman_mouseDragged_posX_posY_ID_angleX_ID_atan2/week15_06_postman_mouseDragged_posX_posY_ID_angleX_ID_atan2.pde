//week15_06_postman_mouseDragged_posX_posY_ID_angleX_ID_atan2
//week15_05_postman_mouseDragged_head_angleX_0_atan2
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
float []angleX =new float[10];//準備20個關節
float []angleY =new float[10];
int ID=0;// 關節代碼 angle[ID]
ArrayList<String> lines = new ArrayList<String>();
void keyPressed(){
  if(key=='s'){//存檔角度
    String now="";
    for(int i=0;i<10;i++){
      now +=angleX[i]+" ";//全部塞到now裡,記得加空格
      now +=angleY[i]+" ";
    }
    lines.add(now);
    String [] arr= new String[lines.size()];//傳統的Java陣列的資料結構
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
    println("現在存檔"+now);
  }
  if(key=='r'){//讀入
     String [] file = loadStrings("angles.txt");
     if(file!=null){//如果有檔案
       for(int i=0;i<file.length;i++){
         lines.add(file[i]);
         println("現在讀檔"+file[i]);
      }
    }
  }
  if(key=='p')playing=!playing;//播動畫<=>不播動畫
  if(key=='1')ID=1;
  if(key=='2')ID=2;
  if(key=='3')ID=3;
  if(key=='4')ID=4;
  if(key=='5')ID=5;
  if(key=='6')ID=6;
  if(key=='7')ID=7;
  
}
boolean playing = false;//一開始,不播動畫,按p切換
float [] posX = {268,220,152,325,392,255,295};
float [] posY = {225,258,259,256,254,366,365};
float [] posAngle ={90,180,180,0,0,-90,-90};
void mouseDragged(){
  //從 void draw()找到頭掛的位置translate(268,225);
  float dx=mouseX -posX[ID],dy=mouseY-posY[ID];
  angleX[ID]=degrees(atan2(dy,dx))+posAngle[ID];
  angleY[ID]=degrees(atan2(dy,dx))+posAngle[ID];
  //要把原本 mouseX 的左右移動,改成向IK的轉動
  //angleX[ID]+=mouseX-pmouseX;//x方向移動,改變對應關節角度
  //angleY[ID]+=mouseY-pmouseY;
}
int R=0;
void myInterpolate(){
  if(lines.size()>=2){//要有兩行angleX angleY
    float alpha = (frameCount%30)/30.0;//介於0.0~1.0中間值
    if(alpha==0.0) R = (R+1)%lines.size();
    float [] oldAngle = float(split(lines.get(R),' '));
    float [] newAngle = float(split(lines.get((R+1)%lines.size()),' '));
    for(int i=0;i<10;i++){
      angleX[i]=oldAngle[i*2]*(1-alpha)+newAngle[i*2+0]*alpha;
      angleY[i]=oldAngle[i*2+1]*(1-alpha)+newAngle[i*2+1]*alpha;
    }
  }
}
void draw(){
  if(playing)myInterpolate();
  background(#FFFFF2);
  rect(0,0,560,560);//蓋上去
  //右手
  pushMatrix();
    translate(220,258);//再放回去
    rotate(radians(angleY[1]));
    translate(-220,-258);//放到旋轉中心
    image(Rarm,0,0);
    pushMatrix();
      translate(152,259);//再放回去
      rotate(radians(angleY[2]));
      translate(-152,-259);//放到旋轉中心
      image(Rhand,0,0);
    popMatrix();
  popMatrix();
  //左手
  pushMatrix();
    translate(325,256);//再放回去
    rotate(radians(angleY[3]));
    translate(-325,-256);//放到旋轉中心
    image(Larm,0,0);
    pushMatrix();
      translate(392,254);//再放回去
      rotate(radians(angleY[4]));
      translate(-392,-254);//放到旋轉中心
      image(Lhand,0,0);
    popMatrix();
  popMatrix();
  //右腳
  pushMatrix();
    translate(255,366);//再放回去
    rotate(radians(angleX[5]));
    translate(-255,-366);//放到旋轉中心
    image(Rleg,0,0);
  popMatrix();
  //左腳
  pushMatrix();
    translate(295,365);//再放回去
    rotate(radians(angleX[6]));
    translate(-295,-365);//放到旋轉中心
    image(Lleg,0,0);
  popMatrix();
  //頭
  pushMatrix();
    translate(268,225);//再放回去
    rotate(radians(angleX[0]));
    translate(-268,-220);//放到旋轉中心
    image(head,0,0);
  popMatrix();
  image(body,0,0);
  
}
