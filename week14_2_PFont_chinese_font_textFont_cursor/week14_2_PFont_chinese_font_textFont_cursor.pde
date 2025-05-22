//week14_2_PFont_chinese_font_textFont_cursor
PFont font1,font2,font3;
void setup(){
  size(300,300);
  font1 = createFont("Times New Roman Bold Italic",50);
  font2 = createFont("微軟正黑體 Bold",50);
  font3 = createFont("elffont-rock.otf",50);//注音的精靈字體
}//記得拉進來elffont-rock.otf
void draw(){
  background(0);//黑色字體
  cursor(CROSS);//鼠標改成十字
  fill(255);//預設的白色字體顏色
  textFont(font1);
  text("Hello 中文",mouseX+20,mouseY-20);
  fill(#FF8E8E);//Tool-Color Selector,在 copy 你要的顏色
  textFont(font2);
  text("Hello 中文",mouseX+20,mouseY+50);
  textFont(font3);
  text("ㄅㄆㄇ",mouseX+20,mouseY+100);
}
