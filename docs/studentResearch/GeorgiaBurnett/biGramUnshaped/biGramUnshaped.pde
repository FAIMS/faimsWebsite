import wordcram.*;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import processing.pdf.*;
import java.awt.*;


/* You can do more than count up words in a 
 * document - you can pass your own weighted
 * words to WordCram, in an array. They can be
 * anything: professional athletes weighted by
 * points scored or minutes of playtime,
 * politicians weighted by how often they vote
 * against party lines, or nations weighted by
 * population, area, or GDP.
 */
 
void setup(){ 
  
size(600, 480, PDF, "../2gram.pdf");
background(0);

String lines[] = loadStrings("../2output.txt");
Word[] bigram = new Word[lines.length]; 
for (int i = 0 ; i < lines.length; i++) {
  String out[] = split(lines[i], "\t");
  bigram[i] = new Word(out[1], Float.parseFloat(out[0]));
}

println("started");
new WordCram(this).
    fromWords(bigram).
    sizedByRank(6,32).
    maxAttemptsToPlaceWord(20).    
    withFonts("Gentium Book Basic").      
    withColorer(Colorers.pickFrom(#FF4F00, #DE0052, #78E700, #00AC6B)).   
    drawAll();
    
println("done");    
}



void wordDrawn(Word word) {
  println(word+" ");
}

void wordSkipped(Word word) {
  println("skipped " + word.word + " because " + word.wasSkippedBecause());
}

