int rozmiar = 40;
int lvl = 1;
int pocz_x;
int pocz_y;
int kon_x;
int kon_y;

void generate(){
  array= new int [rozmiar][rozmiar];
  for(int i = 0; i<rozmiar*rozmiar;i++){
     if(((i/rozmiar)+i%rozmiar)%2 == 0){ //(y+x)%2 == 0 // do generowania szachownicy;
        array[i/rozmiar][i%rozmiar] = 1; //array[y][x] = 1;
     }
  }
  poczatek();
  koniec();
  //array[pocz_y][pocz_x] = 'S';
 // array[kon_y][kon_x] = 'K';
  for(int i = 0; i<20; i++){ //symuluję opoznienie
      addProgress(5); //uznaniowo wykonałem 5% generacji mapy, więc wysyłam info
      delay(50); //symuluję jakieś Twoje operacje
  }
}

void grid() {
  for (; lvl <= 100; lvl++) {
    rozmiar += (rozmiar + lvl) % 10;
    println(lvl + ": " + rozmiar);
  }
}

void poczatek() {
  randomSeed(0);
  pocz_x = int(random(rozmiar - 2))+ 1;  
  pocz_y = int(random(rozmiar - 2))+ 1;
  println("["+pocz_x+"]"+"["+pocz_y+"]");
}

void koniec() {
  randomSeed(0);
  kon_x = pocz_x;
  kon_y = pocz_y;
  int polowa = rozmiar / 2;
  if (pocz_x >= polowa) {
    if(pocz_x!= polowa) kon_x -= int(random(polowa - pocz_x)) + (rozmiar - 2) / 2;
    else kon_x -= (rozmiar - 2) / 2;
  }
  else kon_x += random(polowa - pocz_x) + (rozmiar - 2) / 2;
  if (pocz_y >= polowa) {
    if (pocz_y != polowa) kon_y -= int(random(polowa - pocz_x)) + (rozmiar - 2) / 2;
    else kon_y -= (rozmiar - 2) / 2;
  }
  else kon_y += random(polowa - pocz_x) + (rozmiar - 2) / 2;
   println("["+kon_x+"]"+"["+kon_y+"]");
}
