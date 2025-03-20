//week05_6_pushMatrix_popMatrix_bad
//因為有很多的移動、旋轉,大腦會亂掉,所以用分階層做事
void setup(){
  size(400,400);
}
void draw(){
  background(204);

    translate(width/2,height/2);
    rotate(radians(frameCount*10));
    rect(-50,-5,100,10);
    //希望在-100的地方也再轉,結果壞掉了
    translate(width/2-100,height/2);
    rotate(radians(frameCount*10));
    rect(-50,-5,100,10);

}
