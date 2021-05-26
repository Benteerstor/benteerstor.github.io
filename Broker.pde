class Broker {
  Table table; // værdi for table
  ArrayList<Data> list = new ArrayList<Data> (); // vores arraylist

  void hentData() {
    table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv"); // her indhenter vi vores data fra såsom, døde, cases og dato
    println(table.getRowCount() + " total rows in table"); // gør det visuelt

    for (TableRow row : table.rows()) {
      
      //println(row.getString(1),row.getString(1).equals("Washington"));
      
      if(!row.getString(1).equals("Washington")) continue; // gør at programmet kun tager data fra det område jeg har skrevet i if(), så den kører/ignorerer over alt andet end det jeg fokuserer på
      
      Data d = new Data();
      d.cases = row.getInt(3); // gør man kan se cases når du kører program
      d.deaths = row.getInt(4); // gør du kan se deaths når du kører program at det altså kommer fra i console
      d.dates = row.getString(0); // det samme som de andre bare med dates
      list.add(d); // adder dem til vores arraylist
    }
  }
}
