//week12_6_sound
//要有聲音,需要聲音的Library函式庫
//Sketch - Library - Managed Libraries 找 sound 會看到
//會看到 Sound | Provises a simple way to work with audio
//選他,右下角Install 下載
//安裝好Sound後,會有 File - Examples 點開 Libraries核心函式庫 Sound
//Soundfile 那堆範例 看 SimplePlayback 簡單撥放音樂範例
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw(){//加draw(),才會持續更新畫面

}
