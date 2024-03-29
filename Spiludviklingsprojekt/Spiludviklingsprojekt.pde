import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;
import g4p_controls.*;

String mode = "";
SQLite db;

boolean spil = false;
boolean logged = false;

ArrayList<Virusser> virusserListe = new ArrayList<Virusser>();
ArrayList<Opgraderinger> opgraderingerListe = new ArrayList<Opgraderinger>();
ArrayList<Spoergsmaal> SpoergsmaalListe = new ArrayList<Spoergsmaal>();


int number = 0;
int vaccine = 0;
int sprit = 0;
int sygpleje = 0;
int doctor = 0;
int ambu = 0;
int hospi = 0;

billeder b = new billeder();

Corona corona = new Corona(b);
Ambulance ambulance = new Ambulance(b);
Doktor doktor = new Doktor(b);
Haandsprit haandsprit = new Haandsprit(b);
Hospital hospital = new Hospital(b);
Kanyle kanyle = new Kanyle(b);
Sygeplejske sygeplejske = new Sygeplejske(b);
Baggrund baggrund = new Baggrund(b);
DNA dna = new DNA(b);

Login login = new Login(b);
Logout logout = new Logout(b);

ArrayList<Blodcelle> blodceller = new ArrayList<Blodcelle>();

TextBox textbox1;
TextBox textbox2;
void setup(){
  size(1000, 1000);
  b.loadBilleder();
  rectMode(CENTER);
  //her laver vi 2 objekter fordi vi skal have 2 textbokse
textbox1 = new TextBox(100,100,200,50);
textbox2= new TextBox(100,200,200,50);
  for (int i = 0; i < 20; i++) {
    blodceller.add(new Blodcelle(b));
  }
  if (spil == true) {
  } else {

  }
}

void draw() { 
  clear();

  //println(mouseX,mouseY);

  if (spil == true) {
    if (frameCount % 60 == 0) {
      number += vaccine * 1;
      number += sprit * 5;
      number += sygpleje * 10;
      number += doctor * 25;
      number += ambu * 100;
      number += hospi * 250;
    }

    background (255, 255, 255);

    for (Blodcelle b : blodceller) {
      b.display();
    }
    baggrund.display();
    corona.display();
    ambulance.display();
    doktor.display();
    haandsprit.display();
    hospital.display();
    kanyle.display();
    sygeplejske.display();
    dna.display();

    logout.display();
 login.display();
    textSize(50);

    fill(0, 0, 0);
    text("Opgraderinger", 610, 70);

    textSize(40);
    text("DNA:" + number, 80, 575);
    text("Vaccine:" + vaccine, 690, 170);
    text("Håndsprit:" + sprit, 680, 310);
    text("Sygeplejske:" + sygpleje, 660, 460);
    text("Doktor:" + doctor, 695, 610);
    text("Ambulance:" + ambu, 740, 770);
    text("Hospital:" + hospi, 780, 920);
  } else {

    fill(250, 250, 250);
    text("LOGIN FORM", (width - textWidth("LOGIN FORM")) / 2, 60);
    textSize(15);
    text("Press Enter to Login", (width - textWidth("Press Enter to Login")) / 2, 80);
    textSize(24);
    text("Username: ", 20, 130);
    text("Password: ", 20, 180);

 

    if (logged) {
      fill(250, 250, 250);
      text("YOU ARE LOGGED IN!", (width - textWidth("YOU ARE LOGGED IN")) / 2, 230);
    }

    background (255, 255, 255);  


  }

  if (mode == "Select") 
  {
    println("Select:");
    GetData();
    mode="";
  }

textbox1.draw();
textbox2.draw();
}

void mouseClicked() {
  if (spil == true) {
    if (mouseX > 95 && mouseX < 450 && mouseY > 50 && mouseY < 450) {
      number++;
    }

    if (mouseX > 700 && mouseX < 850 && mouseY > 160 && mouseY < 240 && number >= 10) {
      vaccine++;
      number -= 10;
    }
    if (mouseX > 700 && mouseX < 850 && mouseY > 325 && mouseY < 385 && number >= 50) {
      sprit++;
      number -= 50;
    }

    if (mouseX > 700 && mouseX < 850 && mouseY > 475 && mouseY < 525 && number >= 100) {
      sygpleje++;
      number -= 100;
    }

    if (mouseX > 700 && mouseX < 850 && mouseY > 615 && mouseY < 675 && number >= 250) {
      doctor++;
      number -= 250;
    }

    if (mouseX > 800 && mouseX < 950 && mouseY > 775 && mouseY < 840 && number >= 1000) {
      ambu++;
      number -= 1000;
    }

    if (mouseX > 800 && mouseX < 930 && mouseY > 850 && mouseY < 990 && number >= 2500) {
      hospi++;
      number -= 2500;
    }
  } else {
  }
} 

void mousePressed() {

  if (spil == false) {

    if (mouseX > 245 && mouseX < 750 && mouseY > 740 && mouseY < 850) {
      mode="Select";
    }

    if (mouseX > 245 && mouseX < 750 && mouseY > 740 && mouseY < 850) {
      spil = true;
    }
  } else {

    if (mouseX > 5 && mouseX < 55 && mouseY > 5 && mouseY < 55) {
      spil = false;
    }

   
  }
     
}
//her læser koden databasen igen og søger om der er et username og password som matcher det der skrives i tekstboksene, så hvis jeg skriver Mads i username og Hartwich i password, så skal den lede efter det i databasen, og når den så har fundet det, så logger den ind
void GetData()
{

  db = new SQLite( this, "mydatabase.sqlite" );

  if (db.connect()) {

    db.query( "SELECT users WHERE username = <input fra login>" );

    db.query ( "SELECT users WHERE password = <input for login>" );

    while (db.next()) {

      println("User_ID: " + db.getInt("User_ID") + " \t, username: " + db.getString("username") + " \t, password: " + db.getString("password"));
    }
  } else {

    println("Error DB");
  }

  db.close();
}



void keyPressed() {

    }
