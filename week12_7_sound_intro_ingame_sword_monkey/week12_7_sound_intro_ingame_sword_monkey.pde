//week12_7_sound_intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame,sndIntro,sndMonkey,sndSword;
void setup(){
  size(400,400);
  sndInGame = new SoundFile(this,"In Game Music.mp3");
  sndIntro = new SoundFile(this,"Intro Song_Final.mp3");
  sndMonkey = new SoundFile(this,"Monkey 1.mp3");
  sndSword = new SoundFile(this,"sword slash.mp3");
  sndIntro.play();
}
boolean playingIntro =true;
void keyPressed(){//按下空白建,切換遊戲音樂
  if(playingIntro){
    sndIntro.stop();
    sndInGame.play();
    playingIntro =false;
  }
  else{
    sndInGame.stop();
    sndIntro.play();
    playingIntro =true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) sndSword.play();
  if(mouseButton==RIGHT) sndMonkey.play();
}
void draw(){//加draw(),才會持續更新畫面

}
