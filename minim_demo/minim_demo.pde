import ddf.minim.*;
import ddf.minim.ugens.*;
//import ddf.minim.signals.*;


Minim minim = new Minim(this);
AudioOutput out = minim.getLineOut(Minim.MONO, 2048);

void setup() {
  size(200,200);
}

void draw() {
}

void keyPressed() {
  if (key == 'a') {
    out.playNote(0.0, 0.25, "C3");
    out.playNote(0.1, 0.25, "E3");
    out.playNote(0.2, 0.25, "G3");
  }
  if (key == 'b') {
    out.playNote(0.0, 1.0, new ToneInstrument("C3",1.0,Waves.saw(4),out));
    out.playNote(1.0, 1.0, new ToneInstrument("C3",1.0,Waves.triangle(9),out));
    out.playNote(2.0, 1.0, new ToneInstrument("C3",1.0,Waves.randomNOddHarms(3),out));
    out.playNote(3.0, 1.0, new ToneInstrument("C3",1.0,Waves.TRIANGLE,out));
    out.playNote(4.0, 1.0, new ToneInstrument("C3",1.0,Waves.triangle(0.75),out));
    Waveform disWave = Waves.add( new float[] { 0.5, 0.5 }, Waves.triangle( 0.05 ), Waves.randomNOddHarms( 3 ) );
    out.playNote(5.0, 1.0, new ToneInstrument("C3",1.0,disWave,out));
  }
}

