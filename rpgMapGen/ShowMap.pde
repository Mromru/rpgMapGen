

int X_COUNT = 3;
int Y_COUNT = 3;
int currentCenterX = 25;
int currentCenterY = 25;
float scale = 1.0f;

int evalCountY(){
    return (int)(Y_COUNT / scale);
}

int evalCountX(){
    return (int)(X_COUNT / scale);
}

float evalSizeY(){
  return height/evalCountY();
}
float evalSizeX(){
  return width/evalCountX();
}

void clip(int startX, int endX,int startY,int endY){
  X_COUNT = Math.abs(endX-startX)+1;
  Y_COUNT = Math.abs(endY-startY)+1;
  currentCenterX = (endX+startX)/2;
  currentCenterY = (endX+startX)/2;
}

void showMap(){
  int yCount = evalCountY();
  int xCount = evalCountX();
  for(int y = 0; y<yCount; y++){
    for(int x = 0; x<xCount; x++){
      int mapX = x+currentCenterX-xCount/2;
      int mapY = y+currentCenterY-yCount/2;
      if(mapX >= 0 && mapY>= 0 && mapY < array.length && mapX < array[mapY].length){ 
        switch(array[mapY][mapX]){
           case 0:
           fill(0);
           break;
           case 2:
           fill(color(0, 204, 0));
           break;
           case 3:
           fill(color(204, 0, 0));
           break;
           default:
           fill(255);
        }
        
        rect(x*evalSizeX(),y*evalSizeY(),evalSizeX(),evalSizeY());
      }
    }
  }
}

void mousePressed(){
  int tileClickedX = (int)(mouseX/evalSizeX());
  int tileClickedY = (int)(mouseY/evalSizeY());
  currentCenterX += tileClickedX - evalCountX()/2;
  currentCenterY += tileClickedY - evalCountY()/2;
}

void mouseWheel(MouseEvent event) {
  float scroll = event.getCount();
  if(scroll>0){
    scale *= 0.8;
  }
  else{
    scale *= 1.5;
  }
   
}
