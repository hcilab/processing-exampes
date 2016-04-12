import ddf.minim.*;
Minim minim;
//AudioPlayer player;
AudioSample one, two;

void setup()
{
  size(512, 200);
  
  minim = new Minim(this);
  one = minim.loadSample("one.wav", 2048);
  two = minim.loadSample("two.wav", 2048);
}

void draw() {
  
}

void keyPressed() {
 if (key == '1') {
    one.trigger();
 } 
 if (key == '2') {
    two.trigger(); 
 }
}
