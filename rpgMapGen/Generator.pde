void generate(){
  array= new int [50][50];
  for(int i = 0; i<50*50;i++){
     if(((i/50)+i%50)%2 == 0){ //(y+x)%2 == 0 // do generowania szachownicy;
        array[i/50][i%50] = 1; //array[y][x] = 1;
     }
  }
  
  for(int i = 0; i<20; i++){ //symuluję opoznienie
      addProgress(5); //uznaniowo wykonałem 5% generacji mapy, więc wysyłam info
      delay(50); //symuluję jakieś Twoje operacje
  }
}
