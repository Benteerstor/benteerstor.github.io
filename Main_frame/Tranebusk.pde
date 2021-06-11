class tranebusk extends Planteliste{ // tranebusk nedarver fra klassen planteliste
    tranebusk() { // konstruktør for klassen tranebusk
    umg = loadImage("tranebusk.png"); // loader mit tranebusk billede fra mappen
  }
  void display() {
    
    image(umg, x, y, vaekstheight, vaekstwidth); // størrelse af billedet tranebusk
 }
}
