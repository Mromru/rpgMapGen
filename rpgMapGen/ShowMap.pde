

final int X_COUNT = 3;
final int Y_COUNT = 3;
int currentCenterX = 25;
int currentCenterY = 25;
float scale = 1.0f;

float evalSizeY(){
  return height/Y_COUNT;
}
float evalSizeX(){
  return width/X_COUNT;
}

void showMap(){
  /*array= new int [50][50];
  for(int i = 0; i<50*50;i++){
     if(((i/50)+i%50)%2 == 0){
        array[i/50][i%50] = 1; 
     }
  }*/
  for(int y = 0; y<Y_COUNT; y++){
    for(int x = 0; x<X_COUNT; x++){
      int mapX = x+currentCenterX-X_COUNT/2;
      int mapY = y+currentCenterY-Y_COUNT/2;
      switch(array[mapY][mapX]){
         case 0:
         fill(0);
         break;
         default:
         fill(255);
      }
      
      rect(x*evalSizeX(),y*evalSizeY(),evalSizeX(),evalSizeY());
    }
  }
}
