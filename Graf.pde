class Graf {

  void display(ArrayList<Data> list) {
    int x =0; // int x værdi placering af graf
    int y = 800; // int y værdi placering af graf
    for (Data d : list) {
      x= x + 1; // placering af graf, gør at vores graf ikke står op ad siden, men i bunden som i et rigtigt koordinatsystem
      rect(x, y-d.deaths/10, 1, d.deaths/10); // placering og visualisering af graf
    }
  }

  void hentDag(ArrayList<Data> list) {
    Data d = list.get(mouseX); // henter datoer fra table
    println(d.deaths); // visueliserer deaths når du klikker på grafen så at de kommer i console når du klikker
  }
}
