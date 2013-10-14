import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_130603_squares_for_rich extends PApplet {
  public void setup() {
size(450,750);
fill(209,255,243);
rect(0,0,450,850);

//row1
fill(40,186,166);
noStroke();
rect(0,0,150,150);
fill(56,225,190);
noStroke();
rect(0,20,130,130);
fill(102,246,207);
noStroke();
rect(0,40,110,110);
fill(169,254,231);
noStroke();
rect(0,60,90,90);
fill(209,255,243);
noStroke();
rect(0,80,70,70);
fill(248,252,251);
noStroke();
rect(0,100,50,50);

//row2
fill(0,67,75);
noStroke();
rect(0,150,150,150);
fill(40,186,166);
noStroke();
rect(150,150,150,150);
fill(56,225,190);
noStroke();
rect(170,170,130,130);
fill(102,246,207);
noStroke();
rect(190,190,110,110);
fill(169,254,231);
noStroke();
rect(210,210,90,90);
fill(209,255,243);
noStroke();
rect(230,230,70,70);
fill(248,252,251);
noStroke();
rect(250,250,50,50);
fill(3,140,137);
noStroke();
rect(300,150,150,150);

//row3
fill(40,186,166);
noStroke();
rect(300,330,150,150);
fill(56,225,190);
noStroke();
rect(300,330,130,130);
fill(102,246,207);
noStroke();
rect(300,330,110,110);
fill(169,254,231);
noStroke();
rect(300,330,90,90);
fill(209,255,243);
noStroke();
rect(300,330,70,70);
fill(248,252,251);
noStroke();
rect(300,330,50,50);
fill(0,67,75);
noStroke();
rect(150,330,150,150);

//row4
fill(40,186,166);
noStroke();
rect(150,510,150,150);
fill(56,225,190);
noStroke();
rect(150,530,130,130);
fill(102,246,207);
noStroke();
rect(150,550,110,110);
fill(169,254,231);
noStroke();
rect(150,570,90,90);
fill(209,255,243);
noStroke();
rect(150,590,70,70);
fill(248,252,251);
noStroke();
rect(150,610,50,50);
fill(3,140,137);
noStroke();
rect(0,510,150,150);
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_130603_squares_for_rich" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
