void keyPressed(){
  if(key == 'w' || key == 'S') {
  pelaaja1.y -= pelaaja1.nopeus;
  }
  
  if(key == 'd' || key == 'A') {
  pelaaja1.x += pelaaja1.nopeus;
  }
  
  if(key == 's' || key == 'W') {
  pelaaja1.y += pelaaja1.nopeus;
  }
  
  if(key == 'a' || key == 'D') {
  pelaaja1.x -= pelaaja1.nopeus;
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
  Ammus uusiAmmus = new Ammus();
  ammuslista.add(uusiAmmus);
  vektorinPaivitys(uusiAmmus, false);
  }
}
