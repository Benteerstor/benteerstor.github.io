class Planteliste {
    float x = 5; ; // Float værdier for width of heigth
float y = 5 ;
float hurtigvaekst = 1; // float værdi for hvor hurtigt planterne gror
float vaekstheight = 25; // float værdi for højde af planter
float vaekstwidth = 25; // float værdi for bredde af planter
  PImage emg; // PImage for sakura
PImage umg; // PImage for tranebusk
billeder b;

void display(){

  }
  void vaekst(){ 
vaekstwidth += hurtigvaekst; // i koden under void vaekst laver jeg så at planterne vokser indtil de når 100 i width og height og så ændre den nederste if(kode) væksten af planternes værdi til 0 så de ikke vokser mere
vaekstheight += hurtigvaekst;

if(vaekstwidth >= 100 && vaekstheight >= 100){
  hurtigvaekst = 0;
  }
  }
 }
