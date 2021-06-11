class Dyr {
float x ; // Float værdier for x og y
float y ;
PImage img; // PImage float for isbjørn
PImage dmg; // PImage float for pingvin
float hastighedY = random(-5,10); // random float værdier for dyrenes retning de bevæger sig i
float hastighedX = random(-5,10); 
  billeder b; 

void display(){

  }
  void move(){
    x = x + hastighedX; // Dette er vejen som bolden bevæger sig
    y = y + hastighedY;

    if (x > width || x < 0) { // if værdierne gør at dyerne ikke kan gå ud af borderne
      hastighedX = hastighedX*-1; // Dette er vores bordergrænse så dyrene ikke flyver ud. 
}
      if (y > height|| y < 0) {
        hastighedY = hastighedY*-1;
      }
    }
  }
  
