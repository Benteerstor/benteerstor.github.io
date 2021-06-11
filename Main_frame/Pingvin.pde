class Pingvin extends Dyr{ //pingvin nedarver fra klassen dyr
  Pingvin() { // konstruktør for klassen pingvin
    dmg = loadImage("pingvin.png");
  }
  void display() {
    
    image(dmg, x, y, 50, 50); // størrelse af pingvin billede
 }
}
