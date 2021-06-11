class Sakura extends Planteliste { // klassen sakura nedarver fra klassen planteliste
    Sakura() { // konstruktør for klassen sakura
    emg = loadImage("sakura.png"); // loader billedet sakura.png fra mappen
  }
  void display() {
    
     image(emg,x,y,vaekstheight,vaekstwidth); // startstørrelse af sakura billede/plante
 }
}
 
