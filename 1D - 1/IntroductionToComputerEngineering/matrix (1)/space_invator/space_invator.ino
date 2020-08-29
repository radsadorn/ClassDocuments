#include "LedControl.h"
LedControl lc = LedControl(11,13,10,4);
unsigned long delaytime = 50;

int check_e[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0},
                     {0,1,1,1,1,0,0,0},
                     {0,0,0,0,1,0,0,0},
                     {0,1,1,1,1,0,0,0},
                     {0,0,0,0,1,0,0,0},
                     {0,1,1,1,1,0,0,0},
                     {0,0,0,0,0,0,0,0}};

int check_m[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,1,0,1,1,0,0,0},
                     {0,1,1,0,1,0,0,0},
                     {0,1,1,0,1,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,0,0,0,0,0,0,0}};

int check_h[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,0,0,0,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,1,1,1,1,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,1,0,0,1,0,0,0},
                     {0,0,0,0,0,0,0,0}};

int check_B[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,1,1,1,1,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,1,1,1,1,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,1,1,1,1,1,0},
                     {0,0,0,0,0,0,0,0}};

int check_D[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,0,1,1,1,1,0},
                     {0,0,1,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,1,0,0,0,1,0},
                     {0,0,0,1,1,1,1,0},
                     {0,0,0,0,0,0,0,0}};

int check_G[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,1,1,1,1,0,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,0,0,0,0,1,0},
                     {0,1,1,1,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,1,1,1,1,0,0},
                     {0,0,0,0,0,0,0,0}};

int check_N[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,1,1,0},
                     {0,1,0,0,1,0,1,0},
                     {0,1,0,1,0,0,1,0},
                     {0,1,1,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,0,0,0,0,0,0}};

int check_O[8][8] = {{0,0,0,0,0,0,0,0},
                     {0,0,1,1,1,1,0,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,1,0,0,0,0,1,0},
                     {0,0,1,1,1,1,0,0},
                     {0,0,0,0,0,0,0,0}};

const byte pin_X = 0;
const byte pin_Y = 1;
const byte pin_A = 2;
const byte pin_B = 3;
const byte pin_C = 4;
const byte pin_D = 5;
const byte pin_START = 7;

unsigned int state = 0;
unsigned int select = 3;
bool select_stage = false;
unsigned int stage=0;

bool win = false;

bool end_show = false;

int point = 0;
int ship_pos_x = 3;

int bullet_pos_x=5;
int bullet_pos_y=5;
int bullet_pos_m=6;
int bullet_num = 1;

int enemy_pos_x = 5;
int enemy_pos_y = 5;
int enemy_pos_m = 7;
int enemy_num = 1;

int debounce_time = 100;
long debounce_A = 0;
long debounce_B = 0;
long debounce_C = 0;
long debounce_D = 0;

int bullet_speed = 50;
long debounce_bullet = 0;

int spawn_time = 2000;
long debounce_spawn = 0;

int delete_time = 100;
long debounce_delete = 0;

int enemy_speed = 50;
long debounce_enemy = 0;


//////////////////////////////FUNCTIONS///////////////////////////////////////
void all_black(){
  for(int m=0;m<4;m++){
   for(int r=0;r<8;r++){
     for(int c=0;c<8;c++){
       lc.setLed(m,r,c,false);  
     }  
   }  
  }  
}

void all_red(){
  for(int m=0;m<4;m++){
   for(int r=0;r<8;r++){
     for(int c=0;c<8;c++){
       lc.setLed(m,r,c,true);  
     }  
   }  
  }  
}

bool check_colision(int m1,int x1,int y1,int m2,int x2,int y2){
  if(m1 == m2 && x1 == x2){
    if(y1 == y2 || abs(y1-y2) == 1){ 
      Serial.print(" ");
      Serial.println("Yeah!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      return true;
      }  
  }
  
  if(m1-m2 == 1 && x1 == x2){
    if(y1-y2 == 7){ 
      Serial.print(" ");
      Serial.println("Yeah!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      return true;
    }
  }
  
  if(m1-m2 == -1 && x1 == x2){
    if(y1-y2 == -7){ 
      Serial.print(" ");
      Serial.println("Yeah!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      return true;
    } 
  }
  
  return false;  
}

void clear_ship_left(){
  lc.setLed(0,ship_pos_x-2,7,false); 
  lc.setLed(0,ship_pos_x-1,6,false);   
}

void clear_ship_right(){
  lc.setLed(0,ship_pos_x+2,7,false); 
  lc.setLed(0,ship_pos_x+1,6,false);  
}

void draw_bullet(int m,int x,int y){
  if(bullet_num == 0){
    lc.setLed(m,x,y,true);  
  }
}

void draw_enemy(int m,int x,int y){
  if(enemy_num == 0){
    lc.setLed(m,x,y,true);  
  }
}

void draw_ship(int x){
  lc.setLed(0,x-1,7,true);
  lc.setLed(0,x,6,true);
  lc.setLed(0,x,7,true);
  lc.setLed(0,x+1,7,true);
}

void fire(int x){
  bullet_pos_x = x; 
  bullet_pos_y = 6;
  bullet_pos_m = 0;
  bullet_num = 0;
}

void reset(){
  state = 0;  
  select = 3;
  select_stage = false;
  stage=0;
  win = false;
  end_show = false;
  point = 0;
  ship_pos_x = 3;
  bullet_pos_x=5;
  bullet_pos_y=5;
  bullet_pos_m=6;
  bullet_num = 1;
  enemy_pos_x = 5;
  enemy_pos_y = 5;
  enemy_pos_m = 7;
  enemy_num = 1;
}

void spawn_enemy(){
  enemy_pos_x = random(8);
  enemy_pos_y = 2;
  enemy_pos_m = 3;

  lc.setLed(3,enemy_pos_x-1,0,true);
  lc.setLed(3,enemy_pos_x,0,true);
  lc.setLed(3,enemy_pos_x,1,true);
  lc.setLed(3,enemy_pos_x+1,0,true);
  debounce_delete = millis();

  enemy_num = 0;
}

void update_bullet(){
  if(bullet_pos_m <= 4){
    bullet_pos_y--;
    if(bullet_pos_y == -1){
      bullet_pos_y = 7;
      bullet_pos_m++;  
      lc.setLed(bullet_pos_m-1,bullet_pos_x,0,false);
    }    
    lc.setLed(bullet_pos_m,bullet_pos_x,bullet_pos_y+1,false);
  }
  
  if(bullet_pos_m == 5){
    bullet_num = 1;
    bullet_pos_m = 6;
  }
}

void update_enemy(){
  if(enemy_pos_m >= 0 && enemy_pos_m != 6){
    enemy_pos_y++;
    if(enemy_pos_y == 8){
      enemy_pos_y = 0;
      enemy_pos_m--;  
      lc.setLed(enemy_pos_m+1,enemy_pos_x,7,false);
    }    
    lc.setLed(enemy_pos_m,enemy_pos_x,enemy_pos_y-1,false);
  }
  
  if(enemy_pos_m == -1){
    enemy_num = 1;
    enemy_pos_m = 6;
  }
}

void win_false(){
  for(int m=3;m>=0;m--){
       for(int c=0;c<8;c++){
         if(c % 2 == 0){
           for(int r=0;r<8;r++){
             if(m==3){ 
                if(check_N[c][r] == 0) lc.setLed(m,r,c,false);
             }else if(m == 0){
                if(check_B[c][r] == 0) lc.setLed(m,r,c,false);
             }else{
                if(check_O[c][r] == 0) lc.setLed(m,r,c,false); 
             }
             delay(25);
           }   
         }else{
           for(int r=7;r>=0;r--){
             if(m==3){ 
                if(check_N[c][r] == 0) lc.setLed(m,r,c,false);
             }else if(m == 0){
                if(check_B[c][r] == 0) lc.setLed(m,r,c,false);
             }else{
                if(check_O[c][r] == 0) lc.setLed(m,r,c,false); 
             }
             delay(25);
           }  
         }
      }  
   }  
}

void win_true(){
  for(int m=3;m>=0;m--){
       for(int c=0;c<8;c++){
         if(c % 2 == 0){
           for(int r=0;r<8;r++){
             if(m==3){ 
                if(check_G[c][r] == 0) lc.setLed(m,r,c,false);
             }else if(m == 0){
                if(check_D[c][r] == 0) lc.setLed(m,r,c,false);
             }else{
                if(check_O[c][r] == 0) lc.setLed(m,r,c,false); 
             }
             delay(25);
           }   
         }else{
           for(int r=7;r>=0;r--){
             if(m==3){ 
                if(check_G[c][r] == 0) lc.setLed(m,r,c,false);
             }else if(m == 0){
                if(check_D[c][r] == 0) lc.setLed(m,r,c,false);
             }else{
                if(check_O[c][r] == 0) lc.setLed(m,r,c,false); 
             }
             delay(25);
           }  
         }
      }  
   }  
}
//////////////////////////FUNCTIONS/////////////////////////////////////////////////////////////

//////////////////////////MENU_STATE///////////////////////////////////////////////////////////
void menu(){
  while(select_stage == false){
    Serial.println(digitalRead(pin_A));
    for(int m=3;m>=0;m--){
      for(int r=0;r<8;r++){
        for(int c=0;c<8;c++){
          if(m == 3){
            if(check_e[c][r] == 1) lc.setLed(m,r,c,true);  
          }else if(m == 2){
            if(check_m[c][r] == 1) lc.setLed(m,r,c,true);  
          }else if(m == 1){
            if(check_h[c][r] == 1) lc.setLed(m,r,c,true);  
          }  
        }  
      }  
    }
    
    if(digitalRead(pin_A) == 0 && millis() - debounce_A >= debounce_time){
      select++;
      debounce_A = millis();  
    }
    
    if(digitalRead(pin_C) == 0 && millis() - debounce_C >= debounce_time){
      select--;
      debounce_C = millis();  
    }

    if(select == 0){
      select = 3; 
    }else if(select == 4){
      select = 1;  
    }

    if(select == 3){
       lc.setLed(3,6,4,true); 
       lc.setLed(3,7,3,true);
       lc.setLed(3,7,4,true);
       lc.setLed(3,7,5,true);
    }else{
       lc.setLed(3,6,4,false); 
       lc.setLed(3,7,3,false);
       lc.setLed(3,7,4,false);
       lc.setLed(3,7,5,false);  
    }

    if(select == 2){
       lc.setLed(2,6,4,true); 
       lc.setLed(2,7,3,true);
       lc.setLed(2,7,4,true);
       lc.setLed(2,7,5,true);
    }else{
       lc.setLed(2,6,4,false); 
       lc.setLed(2,7,3,false);
       lc.setLed(2,7,4,false);
       lc.setLed(2,7,5,false);  
    }

    if(select == 1){
       lc.setLed(1,6,4,true); 
       lc.setLed(1,7,3,true);
       lc.setLed(1,7,4,true);
       lc.setLed(1,7,5,true);
    }else{
       lc.setLed(1,6,4,false); 
       lc.setLed(1,7,3,false);
       lc.setLed(1,7,4,false);
       lc.setLed(1,7,5,false);  
    }

    if(digitalRead(pin_START) == 0){
      stage = select;
      all_black();
      state = 1;
      select_stage = true; 
    }
  }  
}
//////////////////////////MENU_STATE///////////////////////////////////////////////////////////

/////////////////////////STAGE_FUNCTIONS////////////////////////////////////////////////////////
void stage_one(){
  while(point < 3){
    /*Serial.print("Stage_ONE >>> ");
    Serial.print("Point : ");
    Serial.println(point);*/
  
    /////KEY_LEFT/////
    if(digitalRead(pin_D) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x += 1;
        clear_ship_left();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_RIGHT/////
    if(digitalRead(pin_B) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x -= 1;
        clear_ship_right();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_FIRE/////
    if(digitalRead(pin_A) == 0 && bullet_num != 0 && millis() - debounce_D >= debounce_time){
        fire(ship_pos_x);
        debounce_D = millis();
    }
  
    if(millis() - debounce_bullet >= bullet_speed){
      update_bullet();
      debounce_bullet = millis();  
    }
  
    if(millis() - debounce_spawn >= spawn_time){
      spawn_enemy();
      debounce_spawn = millis();  
    }
  
    if(millis() - debounce_delete >= delete_time){
      lc.setLed(3,enemy_pos_x-1,0,false);
      lc.setLed(3,enemy_pos_x,0,false);
      lc.setLed(3,enemy_pos_x,1,false);
      lc.setLed(3,enemy_pos_x+1,0,false);
    }
  
    if(millis() - debounce_enemy >= enemy_speed){
      update_enemy();
      debounce_enemy = millis();  
    }
  
    draw_enemy(enemy_pos_m,enemy_pos_x,enemy_pos_y);
    draw_bullet(bullet_pos_m,bullet_pos_x,bullet_pos_y);
    draw_ship(ship_pos_x);

    if(check_colision(bullet_pos_m,bullet_pos_x,bullet_pos_y,enemy_pos_m,enemy_pos_x,enemy_pos_y) == true){
      enemy_num = 1;
      bullet_num = 1; 
  
      lc.setLed(bullet_pos_m,bullet_pos_x,bullet_pos_y,false);
      lc.setLed(enemy_pos_m,enemy_pos_x,enemy_pos_y,false);
      
      bullet_pos_m = 6;
      enemy_pos_m = 7;

      bullet_pos_y = 6;
      enemy_pos_y = 7;

      bullet_pos_x = 6;
      enemy_pos_x = 7;
      
      point += 1; 
    }

    if(enemy_pos_m == 0 && enemy_pos_y == 7){
      point = 1000;  
    }
  }  

  if(point == 3){
    win = true;  
  }else{
    win = false;  
  }
}


void stage_two(){
  while(point < 5){
    /*Serial.print("Stage_TWO >>> ");
    Serial.print("Point : ");
    Serial.println(point);*/
  
    /////KEY_LEFT/////
    if(digitalRead(pin_D) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x += 1;
        clear_ship_left();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_RIGHT/////
    if(digitalRead(pin_B) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x -= 1;
        clear_ship_right();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_FIRE/////
    if(digitalRead(pin_A) == 0 && bullet_num != 0 && millis() - debounce_D >= debounce_time){
        fire(ship_pos_x);
        debounce_D = millis();
    }
  
    if(millis() - debounce_bullet >= bullet_speed){
      update_bullet();
      debounce_bullet = millis();  
    }
  
    if(millis() - debounce_spawn >= spawn_time){
      spawn_enemy();
      debounce_spawn = millis();  
    }
  
    if(millis() - debounce_delete >= delete_time){
      lc.setLed(3,enemy_pos_x-1,0,false);
      lc.setLed(3,enemy_pos_x,0,false);
      lc.setLed(3,enemy_pos_x,1,false);
      lc.setLed(3,enemy_pos_x+1,0,false);
    }
  
    if(millis() - debounce_enemy >= enemy_speed){
      update_enemy();
      debounce_enemy = millis();  
    }
  
    draw_enemy(enemy_pos_m,enemy_pos_x,enemy_pos_y);
    draw_bullet(bullet_pos_m,bullet_pos_x,bullet_pos_y);
    draw_ship(ship_pos_x);
    
    if(check_colision(bullet_pos_m,bullet_pos_x,bullet_pos_y,enemy_pos_m,enemy_pos_x,enemy_pos_y) == true){
      enemy_num = 1;
      bullet_num = 1; 
  
      lc.setLed(bullet_pos_m,bullet_pos_x,bullet_pos_y,false);
      lc.setLed(enemy_pos_m,enemy_pos_x,enemy_pos_y,false);
      
      bullet_pos_m = 6;
      enemy_pos_m = 7;

      bullet_pos_y = 6;
      enemy_pos_y = 7;

      bullet_pos_x = 6;
      enemy_pos_x = 7;
      
      point += 1; 
    }

    if(enemy_pos_m == 0 && enemy_pos_y == 7){
      point = 1000;  
    }
  }

  if(point == 5){
    win = true;  
  }else{
    win = false;  
  }  
}


void stage_three(){
  while(point < 10){
    /*Serial.print("Stage_THREE >>> ");
    Serial.print("Point : ");
    Serial.println(point);*/
  
    /////KEY_LEFT/////
    if(digitalRead(pin_D) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x += 1;
        clear_ship_left();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_RIGHT/////
    if(digitalRead(pin_B) == 0 && millis() - debounce_D >= debounce_time){
        ship_pos_x -= 1;
        clear_ship_right();
        draw_ship(ship_pos_x);
        debounce_D = millis();
    }
  
    /////KEY_FIRE/////
    if(digitalRead(pin_A) == 0 && bullet_num != 0 && millis() - debounce_D >= debounce_time){
        fire(ship_pos_x);
        debounce_D = millis();
    }
  
    if(millis() - debounce_bullet >= bullet_speed){
      update_bullet();
      debounce_bullet = millis();  
    }
  
    if(millis() - debounce_spawn >= spawn_time){
      spawn_enemy();
      debounce_spawn = millis();  
    }
  
    if(millis() - debounce_delete >= delete_time){
      lc.setLed(3,enemy_pos_x-1,0,false);
      lc.setLed(3,enemy_pos_x,0,false);
      lc.setLed(3,enemy_pos_x,1,false);
      lc.setLed(3,enemy_pos_x+1,0,false);
    }
  
    if(millis() - debounce_enemy >= enemy_speed){
      update_enemy();
      debounce_enemy = millis();  
    }
  
    draw_enemy(enemy_pos_m,enemy_pos_x,enemy_pos_y);
    draw_bullet(bullet_pos_m,bullet_pos_x,bullet_pos_y);
    draw_ship(ship_pos_x);

    if(check_colision(bullet_pos_m,bullet_pos_x,bullet_pos_y,enemy_pos_m,enemy_pos_x,enemy_pos_y) == true){
      enemy_num = 1;
      bullet_num = 1; 
  
      lc.setLed(bullet_pos_m,bullet_pos_x,bullet_pos_y,false);
      lc.setLed(enemy_pos_m,enemy_pos_x,enemy_pos_y,false);
      
      bullet_pos_m = 6;
      enemy_pos_m = 7;

      bullet_pos_y = 6;
      enemy_pos_y = 7;

      bullet_pos_x = 6;
      enemy_pos_x = 7;
      
      point += 1; 
    }

    if(enemy_pos_m == 0 && enemy_pos_y == 7){
      point = 1000;  
    }
  }

  if(point == 10){
    win = true;  
  }else{
    win = false;  
  }
}
/////////////////////////STAGE_FUNCTIONS////////////////////////////////////////////////////////

//////////////////////////GAME_STATE///////////////////////////////////////////////////////////
void game(){
  ////////STAGE_SELECTED///////////
  switch(stage){
    case 3:
      stage_one();  
      break;
    case 2:
      stage_two();
      break;
    case 1:
      stage_three();
      break;
  }

  ////////////END_SHOW/////////////
  if(end_show == false){
     all_red();
     delay(500);
     
     if(win == true){
        win_true(); 
     }else{
        win_false(); 
     }

     delay(1000);
     end_show = true;
  }else{
     all_black();
     delay(500);
     reset();
  }
}
 
//////////////////////////GAME_STATE///////////////////////////////////////////////////////////

/////////////////////////////////////////SETUP///////////////////////////////////
void setup(){
  // put your setup code here, to run once:
  Serial.begin(9600);
  randomSeed(analogRead(0));
  
  pinMode(pin_A,INPUT);
  pinMode(pin_B,INPUT);
  pinMode(pin_C,INPUT);
  pinMode(pin_D,INPUT);
  pinMode(pin_START,INPUT);

  for(int i=0;i<4;i++){
    lc.shutdown(i,false);
    lc.setIntensity(i,8);
    lc.clearDisplay(i);
  }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////LOOP//////////////////////////////////////////
void loop() {
  switch(state){
    case 0:
      menu();
      break;
    case 1:
      game();
      break;
  }
}
