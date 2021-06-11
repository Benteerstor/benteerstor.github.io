class Verden {
  ArrayList<Dyr> dyrList = new ArrayList<Dyr>(); //arraylist for Dyr 
ArrayList<Planteliste> PlanteList = new ArrayList<Planteliste>(); //Arraylist for planteliste
ArrayList<Terrain> terrainList = new ArrayList<Terrain>(); // arraylist for terrainlist
    PImage isbjorn; 
  PImage pingvin; 
  PImage sakura;
  PImage tranebusk;
  PImage Nordpolen;
  
  
  void billeder(){
    isbjorn = loadImage("isbjorn.png");
  pingvin = loadImage("pingvin.png");
  sakura = loadImage("sakura.png");
  tranebusk = loadImage("tranebusk.png");
     isbjorn.resize(40,40); // størrelse af isbjorn billede. resize gør at jeg kan ændre billedet
    pingvin.resize(40,40); // størrelse af pingvin billede. resize gør at jeg kan ændre billedet

}
void lavisbjorn(){ // void for lavisbjorn + adder den til arraylist: dyrList
  isbjorn i = new isbjorn();
  i.x = mouseX;
  i.y = mouseY;
  dyrList.add(i);
}
void lavpingvin(){ // void for lavpingvin + adder den til arraylist: dyrList
Pingvin p = new Pingvin();
p.x = mouseX;
p.y = mouseY;
dyrList.add(p);
}
void lavsakura(){ // void for lavsakura + adder den til arraylist: plantelist
  Sakura s = new Sakura();
  s.x = mouseX;
  s.y = mouseY;
  PlanteList.add(s);
  }
  void lavtranebusk(){ // void for lavtranebusk + adder den til arraylist: plantelist
  tranebusk b = new tranebusk();
  b.x = mouseX -250;
  b.y = mouseY ;
  PlanteList.add(b);
  }
  void lavnordpolen(){ // void for lavnordpolen + adder den til arraylist: terrainList
    nordpolen y = new nordpolen();
    y.x = width/2;
    y.y = height/2;
    terrainList.add(y);
     }
void opdaterdyr(){ //gør at dyrene kan blive vist med display + bevæge sig og ikke bare står stille når man bruger mousePressed
  for(Dyr d: dyrList){
    d.display();
    d.move();
    println(d.hastighedX); // gør at vi kan se i console hvor hurtigt hver dyr bevæger sig
    }
    }
    void opdaterplanteliste(){ //gør at planterne kan blive vist med display + kan gro med vaekst
  for(Planteliste l: PlanteList){
l.display();
l.vaekst();
    }
    }
   void opdaterterrain(){ // gør at vi kan se vores terrain igennem display
     for(Terrain t : terrainList){
       t.display();
     }
     }
void sammenstoed(){ // gør at når dyrene rammer ind for nordpolen billede/terrain område så bliver de langsommere
  for(Terrain n : terrainList){ 
    for(Dyr d : dyrList) {
      if(d.y < n.y + (n.terrainheight - n.terrainheight/2) - 20 && d.x < n.x + (n.terrainwidth - n.terrainwidth/2) - 20){      
        if(d.y > n.y - (n.terrainheight - n.terrainheight/2) - 20 && d.x > n.x - (n.terrainwidth - n.terrainwidth/2) - 20){
          d.hastighedX *= 0.5;
          d.hastighedY *= 0.5;
          }else{
      }
    }
}
}
}
}
