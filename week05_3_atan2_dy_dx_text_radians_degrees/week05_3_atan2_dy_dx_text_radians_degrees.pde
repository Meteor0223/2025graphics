//week05_3_atan2_dy_dx_text_radians_degrees
//角度 degrees vs. radians 弧度/弳度 結合week04_1 和week05_2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,mouseX,mouseY);
  line(200,200,400,200);
  float dx=mouseX-200,dy=mouseY-200;
  float a= atan2(dy,dx);
  arc(200,200,200,200,0,a,PIE);
  textSize(30);
  text("radians: "+a,100,100);
  text("degrees: "+degrees(a),100,30);
}
