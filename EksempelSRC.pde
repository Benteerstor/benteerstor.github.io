Graf graf = new Graf();
Broker broker = new Broker();

void setup() {

  size(800, 800); // størrelse af program
  broker.hentData();
}

void draw() {
  clear();
  background(255); // baggrund
  graf.display(broker.list); // displayer broker.list
  String date; // string værdi for date
  try{ // når jeg kører try så kører den catch
    date = broker.list.get(mouseX).dates; // placerer dato visuelt på musensplacering når du holder over grafen, så at du kan se den præcise dato når du holder musen over noget
  }catch(IndexOutOfBoundsException e){ // hvis koden giver ikke giver enfejl så kører catch ikke, men hvis der er en fejl så køres koden
    date = "";
  }
    int deaths; // int værdi for deaths 
  try{ // når jeg kører try så kører den catch
    deaths = broker.list.get(mouseX).deaths; // viser deaths visuelt inde i selve programmet så vi kan se antallet af døde på en hvis dato, fordi vi også har vist datoen visuelt inde i selve programmet med koden der er lidt over
  }catch(IndexOutOfBoundsException e){ // hvis koden giver ikke giver enfejl så kører catch ikke, men hvis der er en fejl så køres koden
    deaths = 0;
    }
  fill(255,0,0); // farve af text på dato og deaths
  textSize(20); // størelse af dato og deaths text størrelse
  text(date, mouseX,mouseY); // placerer vores dato visuelt når vi holder musen over grafen, så du kan se præcis hvilken dag og hvor mange der er døde den dag
  text(deaths, mouseX,mouseY +30); // placerer vores dødtal visuelt når vi holder musen over grafen, så du kan se præcis hvilken dag og hvor mange der er døde den dag
  text("date=",mouseX -60,mouseY); // skriver date= ved siden af dødstallet, så vi kan kende forskel mellem værdierne date & deaths
  text("deaths=",mouseX -80,mouseY+30); // skriver deaths= ved siden af dødstallet, så vi kan kende forskel mellem værdierne date & deaths
  fill(0,0,0); // farve af text "covid-19 graf"
  textSize(50); // størrelse af text "covid-19 graf"
  text("covid-19 graf", 250, 50); // placerer titel
 
}


void mousePressed() {
  graf.hentDag(broker.list);
}
