//week14_1_PFont_createFont_textSize_text
//學過了PImage PVector PFont ...
size(300,300);
textSize(50);
text("Hello",10,50);//預設字型 
PFont font =createFont("Times New Roman",50);
textFont(font);//換字形
text("Hello",10,100);//放下面一點點
//print(PFont.list());//列出可用字形
//改用 for迴圈,把全部的字型分行列出來
for(String name : PFont.list())println(name);
