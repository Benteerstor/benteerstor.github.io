PImage baggrund;
PImage Raket;
PImage Rumvæsen;
int rumvæsenR = 5;
int rumvæsenK = 8;
float raketPosX, raketPosY;
Rumvæsen rumvæsen1;


void setup(){
size(1000,1000);
baggrund = loadImage("rum.png");
baggrund.resize(1000,1000);
background(baggrund);
Raket = loadImage("raket.png");
Raket.resize(60,60);
raketPosX = 500;
raketPosY = 800;
Rumvæsen = loadImage("rumvæsen.png");
Rumvæsen.resize(40,40);
rumvæsen1 = new Rumvæsen();
}

void draw(){
background(255);
//int rumvæsenS = ((width-((rumvæsenA+1)*space))/rumvæsenA);
image(baggrund,0,0);
image(Raket,raketPosX,raketPosY,60,60);
image(Rumvæsen,500,200,60,50);
  }
  
void keyPressed()
{
if (key == 'd')
{
raketPosX = raketPosX + 7;
}
if (key == 'a')
{
raketPosX = raketPosX - 7;
}
}
