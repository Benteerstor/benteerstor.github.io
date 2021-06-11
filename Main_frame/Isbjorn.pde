class isbjorn extends Dyr { //isbjørb nedarver fra klassen Dyr
  isbjorn() { // konstruktøren for klassen isbjørn
    img = loadImage("isbjorn.png"); 
  }
  void display() {
  
    image(img, x, y, 50, 50); //størrelse af isbjørn billede
  }
}
