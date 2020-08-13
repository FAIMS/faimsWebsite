import wordcram.*;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import processing.pdf.*;
import java.awt.*;


void setup() {
  String lines[] = loadStrings("../2outputReWeight.txt");
Word[] bigram = new Word[lines.length]; 
for (int i = 0 ; i < lines.length; i++) {
  String out[] = split(lines[i], "\t");  
  bigram[i] = new Word(out[1], Float.parseFloat(out[0]));
}


  PImage image = loadImage("../titlepage.png");
  size(image.width, image.height, PDF, "../titlePage.pdf");
  
  background(0);
  
  Shape imageShape = new ImageShaper().shape(image, #000000);
  ShapeBasedPlacer placer = new ShapeBasedPlacer(imageShape);
  println("started");  
  
    new WordCram(this).
      fromWords(bigram).
      withPlacer(placer).
      withNudger(placer).
      withFonts("Gentium Book Basic"). 
      minShapeSize(1).
      maxAttemptsToPlaceWord(1000  ).       
      sizedByWeight(4,512).
      //withColor(#ffffff).
      withColorer(Colorers.pickFrom(#FF4F00, #DE0052, #78E700, #00AC6B, #A63400, #900035, #4E0600, #007046)).  
        drawAll();
      

/*      
      imageShape = new ImageShaper().shape(image, #ffffff);
  placer = new ShapeBasedPlacer(imageShape);
println("midway");    
  new WordCram(this).
    fromWords(bigram).
    withPlacer(placer).
    withNudger(placer).
    sizedByWeight(8, 256).
    minShapeSize(1).
    maxAttemptsToPlaceWord(100000000).  
    withColor(#000000).
    drawAll();
    */
    println("done");  
}


void beginDraw(){
  println("Drawing Begin.");
}
void endDraw(){
  println("\n---------------\nDrawing Done.");
}
void wordDrawn(Word word) {
  println(word+" ");
}

void wordSkipped(Word word) {
  println("skipped " + word.word + " because " + word.wasSkippedBecause());
}

  


