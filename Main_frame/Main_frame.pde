Verden v = new Verden(); // objekt verden
Dyr d = new Dyr(); // objekt Dyr
Planteliste l = new Planteliste(); // objekt Planteliste
billeder billedeb;

// Mainframe

void setup() {

  size(800,700); // Størrelse på programmets vindue
  billedeb = new billeder();

}

void draw() { 
  clear();
background(50); // Baggrundens farve 
v.opdaterdyr(); // de forskellige opdater værrdier, sammenstoed og lavnordpolen under void draw tegner dem ind
v.opdaterplanteliste();
v.opdaterterrain();
v.sammenstoed();
v.lavnordpolen();

 } 
void mousePressed(){
d.move();
v.lavisbjorn(); // gør at de forskellige lavværdier indenunder mousePressed gør at når jeg kligger på musen så spawner de
v.lavpingvin();
v.lavsakura();
v.lavtranebusk();
}
