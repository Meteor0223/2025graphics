//week02_2_for_for_if_rect
fill(238);//填充色彩
size(400,400);//視窗大小
background(255);//白色背景
noStroke();//不要畫框線
float s=400/14;//計算格子大小
for(int i=0;i<14;i++){
  for(int j=0;j<14;j++){
    if((i+j)%2==0)rect(j*s,i*s,s,s);
  }
}
