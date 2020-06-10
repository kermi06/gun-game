import java.util.ArrayList;

int leveys;
int korkeus;
int pelaajanKorkeus;
int pelaajanLeveys; 

ArrayList<Ammus> ammuslista = new ArrayList<Ammus>();
ArrayList<Vektori> vektorilista = new ArrayList<Vektori>();

Pelaaja pelaaja1 = new Pelaaja();
Ammus tahtaysVektori = new Ammus();


public class Pelaaja {
  float x = 100;
  float y = 100;
  float koko = 10;
  float nopeus = 5;
}

public class Ammus {
  float alkuX;
  float alkuY;
  float loppuX;
  float loppuY;
  float dmg;
  float nopeus;
  float pituus = 100;
  
  float vektoriX;
  float vektoriY;
  
  public void laskeLoppuKoordinaatit(){
    this.loppuX = alkuX + pituus*vektoriX;
    this.loppuY = alkuY + pituus*vektoriY;
  }
}

public class Vektori {
  float x;
  float y;
  float pituus;
}


void setup(){
  fullScreen();
  colorMode(RGB, 255);
  rectMode(CENTER);
  leveys = width;
  korkeus = height;
  pelaajanKorkeus = korkeus/16;
  pelaajanLeveys = leveys/26;
}


void draw(){
   background(5,240,10);
   rect(pelaaja1.x, pelaaja1.y, pelaajanLeveys, pelaajanKorkeus);
   
   if(ammuslista!= null){
    for(Ammus ammus : ammuslista){
     piirraViiva(ammus);
    }
   }
   
   vektorinPaivitys(tahtaysVektori, true);
   piirraViiva(tahtaysVektori);
   
  }
