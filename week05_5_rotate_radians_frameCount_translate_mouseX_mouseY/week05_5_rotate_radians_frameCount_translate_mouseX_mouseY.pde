//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
//比較rotate 與 translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //請做以下測試 :把下面兩行,掉一下順序
  //會發現: 兩個順序不同，一個字轉，一個公轉
  //在電腦圖學理,畫圖時,會照著之前累積的移動、旋轉來放東西
  //移動到滑鼠位置
  rotate(radians(frameCount));
  translate(mouseX,mouseY);
  rect(-50,-5,100,10);
}
