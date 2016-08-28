import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer input;

PImage img;
int pointillize = 16;

void setup()
{
  size(1401,700);
  img = loadImage("ATCQ.jpg");
  background(0);
  smooth();
  frameRate(30);
  
minim = new Minim(this);
  
  song = minim.loadFile("02 Luck of Lucien.m4a");

}

void draw()
{
  int x = int(random(img.width));
  int y =int(random(img.height));
  //convert from a 1dimensional array of pixels to a 2d array
  int loc = x + y*img.width;
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  fill(r,g,b,225);
  ellipse(x,y,pointillize,pointillize);
  
song.play();
}