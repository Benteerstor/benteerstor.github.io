class nordpolen extends Terrain{ // nordpolen nedarver fra klassen terrain
nordpolen(){ // konstruktør for nordpolen klassen
  hmg = loadImage("nordpolen.jpeg"); // loader mit nordpolen billede ind fra mappen
 }
  void display() {
    
    image(hmg, x, y, terrainwidth, terrainheight); // størrelsen af billedet nordpolen
 }
  }
