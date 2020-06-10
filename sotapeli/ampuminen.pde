void ampuminen(Pelaaja ampuja, Vektori vektori){
  vektori.x = mouseX - ampuja.x;
  vektori.y = mouseY - ampuja.y;
  vektori.pituus = sqrt(vektori.x * vektori.x + vektori.y * vektori.y);
  vektori.x /= vektori.pituus;
  vektori.y /= vektori.pituus;
  
}


void piirraViiva(Ammus ammus){
  line(ammus.alkuX, ammus.alkuY, ammus.loppuX, ammus.loppuY);
}

public void vektorinPaivitys(Ammus ammus, Boolean onTahtain){
  Vektori uusiVektori = new Vektori();
  vektorilista.add(uusiVektori);
  
  ammus.alkuX = pelaaja1.x;
  ammus.alkuY = pelaaja1.y;
  ammus.vektoriX = uusiVektori.x;
  ammus.vektoriY = uusiVektori.x;
  
  ampuminen(pelaaja1, uusiVektori);
  
  if(onTahtain){
    ammus.pituus = uusiVektori.pituus;
    //println("jee");
  }
  
  else{
    println("hurb");
    ammus.laskeLoppuKoordinaatit();
  }
}
