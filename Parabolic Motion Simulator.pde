//Physics II Parabolic Motion Simulator Project

int sizex=750, sizey=500, w0=-1, w1=-1, w2=-2, w3=-2, w4=-2, ww=-1, f=0, n=65, m=390, ns=65, ms=390, light=-1, V0=0, VV=0;
float G=10, t, h, T, s, Vx, Vy;

void SAMGAK() {noStroke(); fill(250); ellipse(40, 460, 65, 65);}
void NEMO() {noStroke(); fill(250); ellipse(120, 460, 65, 65); fill(50); noStroke(); triangle(60, 460, 30, 480, 30, 440); rect(103, 442, 35, 35);}  
void theta() {noStroke(); fill(250); rect(450, 428, 140, 65); fill(0); textSize(18); text("Theta Value(θ)", 458, 446); text("-------------", 452, 458);}
void th() {noStroke(); fill(0); textSize(22); text("30", 468, 480); text("45", 508, 480); text("60", 548, 480);}
void ch() {noStroke(); fill(255); rect(455, 454, 130, 38);}
void vol() {noStroke(); fill(0, 38, 77); rect(170, 424, 100, 72); textSize(15); fill(255); text("theta: ", 176, 438); text("high H: ", 176, 457); text("high H time: ", 176, 476); text("H.Z Reach S: ", 176, 494);}
void velocity() {noStroke(); fill(250); rect(600, 428, 140, 65); fill(0); textSize(18); text("Initial Velocity", 610, 446); text("-------------", 602, 458);}
void wood() {int a, c=0, b=750; for (a=420; a>=405; a--) { stroke(0, 125, 0); b=b-2; c=c+2; line(c, a, b, a); }}
void value() {noStroke(); fill(255); textSize(15); text((int)+t +"°", 280, 438); text(+h +"m", 280, 456); text(+T +"s", 280, 476); text(+s +"km", 280, 494); }
void sr() {noStroke(); fill(0, 38, 77); rect(42, 0, sizex-42, sizey-95);}
void val(){noStroke(); wood(); sr(); fill(255); ellipse(n, m, 45, 45);}
void meter(){noStroke(); fill(0, 38, 77); rect(0, 0, 40, 300); fill(0, 125, 0); rect(14, 414, 3, -404); fill(255); textSize(13); text("100m", 4, 22); text("30m", 7, 286); text("60m", 7, 168); text("90m", 7, 49);}
void mp(){noStroke(); fill(20); ellipse(618,473,30,30); ellipse(721,473,30,30); fill(255); rect(607,470,22,8); rect(710,469,22,8); rect(718,463,7,20);}

void setup() {
  surface.setTitle("[Physics II] Parabolic Motion Simulator");
  size(750, 500);
  background(0, 38, 77);
  textSize(80); 
  text("Click to Start", sizex/5.8, sizey/1.9);
  frameRate(60);
}

void draw() {
  if ((mouseX>=sizex-sizex)&&(mouseX<=sizex)&&(mouseY>=sizey-sizey)&&(mouseY<=sizey)) {
    if (mousePressed == true) { 
      if (ww==-1) { noStroke(); sr(); theta(); SAMGAK(); NEMO(); vol(); velocity(); wood(); th(); fill(0, 125, 0); rect(14, 414, 3, -404); meter(); mp(); ww=1;}}}
      if(ww==1){noStroke(); fill(255); rect(600, 454, 136, 36); mp(); 
    if(V0>=0 && V0<=9) { textSize(25); fill(0); text(+V0, 662, 481);}
    if(V0>=10 && V0<=99) { textSize(25); fill(0); text(+V0, 655, 481);}
    if(V0>=100 && V0<=999) { textSize(25); fill(0); text(+V0, 645, 481);}
    if(V0<0) { textSize(22); fill(255,0,0); text("ERROR", 635, 481); V0=-1;}
    if(V0>=1000 && V0<=1617 && V0<=1619 && V0>=1620) { textSize(22); fill(255,0,0); text("ERROR", 635, 481); V0=1000;}

  if((mouseX)>=663&&(mouseX)<=678&&(mouseY)>=465&&(mouseY)<=480){
  if(mousePressed==true){
    V0=1618; V0=0;}}

if((mouseX)>=607&&(mouseX)<=629&&(mouseY)>=470&&(mouseY)<=478){
  if(light==-1){
    fill(255,255,0);
    rect(607,470,22,8); }
  light=1;}
  else light=-1;
  
if((mouseX)>=711&&(mouseX)<=733&&(mouseY)>=469&&(mouseY)<=477||(mouseX)>=719&&(mouseX)<=726&&(mouseY)>=463&&(mouseY)<=483){
  if(light==-1){
    fill(255,255,0);
    rect(710,469,22,8);
    rect(718,463,7,20);
}  light=1;}
  else light=-1;
 
if((mouseX)>=607&&(mouseX)<=629&&(mouseY)>=470&&(mouseY)<=478){
  if(mousePressed==true){
    delay(100); V0-=1; }
  }
    
if((mouseX)>=711&&(mouseX)<=733&&(mouseY)>=469&&(mouseY)<=477||(mouseX)>=719&&(mouseX)<=726&&(mouseY)>=463&&(mouseY)<=483){
  if(mousePressed==true){
     delay(100); V0+=1;}}

    if ((mouseX>=99)&&(mouseX<=140)&&(mouseY>=434)&&(mouseY<=482)) { //nemo
      if (mousePressed == true){
      if(w1==1){delay(150); noStroke(); fill(0, 38, 77); rect(99, 434, 41, 48); fill(250); ellipse(120, 460, 65, 65); fill(50); rect(103, 442, 35, 35);
       sr(); SAMGAK(); NEMO(); wood(); w1=-1;}
    else if(w1==-1){delay(150);
    noStroke(); fill(50); ellipse(120, 460, 65, 65); fill(250); rect(103, 442, 35, 35); wood(); sr(); 
    fill(0, 38, 77); rect(279, 424, 160, 72); t=0; w0=1; n=ns; m=ms; f=0; w0=-1; w2=-2; w3=-2; w4=-2; w1=1; 
  theta(); velocity(); th(); meter();}}}

  if ((mouseX>=466)&&(mouseX<=500)&&(mouseY>=452)&&(mouseY<=492)){
    if (mousePressed == true){
      t=0; ch(); noStroke(); fill(0, 38, 77); rect(279, 424, 160, 72); 
      if (w2==2) { ch(); delay(150); fill(0); th(); w2=w2*-1;}
      else if (w2==-2) { w3=-2; w4=-2; delay(150); noStroke(); ch(); textSize(22); fill(0, 38, 77); rect(279, 424, 160, 72); fill(215); text("30", 468, 480); fill(0); text("45", 508, 480); text("60", 548, 480);
        t=30; h=(((V0*V0*1/2*1/2))/(2*G)); 
        T=(V0*1/2)/G; 
        s=(20*(T*sqrt(3)/2*V0)/1000); 
        value(); 
        w2=w2*-1;
      }}}

  if ((mouseX>=504)&&(mouseX<=540)&&(mouseY>=452)&&(mouseY<=492)) {
    if (mousePressed == true) {
      if (w3==2) { t=0; ch(); noStroke(); fill(0, 38, 77); rect(279, 424, 160, 72); delay(150); fill(0); th(); w3=w3*-1; }
      else if (w3==-2) { ch(); w2=-2; w4=-2; delay(150);noStroke(); textSize(22); fill(0, 38, 77); rect(279, 424, 160, 72); fill(0); text("30", 468, 480); text("60", 548, 480); fill(215); text("45", 508, 480);
        t=45; 
        h=(((V0*V0)*((sqrt(2)/2)*(sqrt(2)/2)))/(2*G)); 
        T=(V0*sqrt(2)/2)/G;  
        s=(20*(T*sqrt(2)/2*V0)/1000); 
        value(); w3=w3*-1;
      }}}

  if ((mouseX>=541)&&(mouseX<=579)&&(mouseY>=452)&&(mouseY<=492)){
    if (mousePressed == true){
      if (w4==2) { t=0; ch(); noStroke(); fill(0, 38, 77); rect(279, 424, 160, 72); delay(150); fill(0); th(); w4=w4*-1;}
      else if (w4==-2) { ch(); w2=-2; w3=-2; delay(150);noStroke(); textSize(22);
        fill(0, 38, 77); rect(279, 424, 160, 72); fill(0); text("30", 468, 480); text("45", 508, 480); fill(215); text("60", 548, 480);
        t=60;
        h=(((V0*V0)*((sqrt(3)/2)*(sqrt(3)/2)))/(2*G)); 
        T=(V0*sqrt(3)/2)/G; 
        s=(20*(T*1/2*V0))/1000; 
        value(); 
        w4=w4*-1; }}}
    
  if ((mouseX>=7)&&(mouseX<=72)&&(mouseY>=429)&&(mouseY<=492)) { //samgak
    if (mousePressed == true) {
      if (w0==-1) {delay(150); noStroke(); fill(50); ellipse(40, 460, 65, 65); fill(250); triangle(60, 460, 30, 480, 30, 440); w0=-2;} 
      else if (w0==1) { delay(150);  w0=w0*-1; }}}

if(w0==-2){ if (t!=30 && t!=45 && t!=60) { sr(); wood(); n=ns; m=ms; f=0; w0=1; fill(50);
          noStroke(); ellipse(40, 460, 65, 65); fill(250); triangle(60, 460, 30, 480, 30, 440);}
          else if (V0==0) {
          if (m==ms){val(); fill(250); ellipse(40, 460, 65, 65); fill(50); noStroke(); triangle(60, 460, 30, 480, 30, 440); w0=1;} //stop
        }
         else if (t==30) {
          if (m>=ms+1){val(); fill(250); ellipse(40, 460, 65, 65); fill(50); noStroke(); triangle(60, 460, 30, 480, 30, 440); w0=1;} //stop
          else if (f>=0 && f%2==0 && f<=49) {val(); n+=5; m-=3; f++;} //up
          else if (f>=0 && f%2==1 && f<=49) {val(); n+=5; m-=1; f++;} //up
          else if (f==50) {val(); n+=0; m-=0; f++;} //stop
          else if (f>=61 && f%2==0 && f<=121) {val(); n+=5; m+=3; f++;} //down
          else if (f>=61 && f%2==1 && f<=121) {val(); n+=5; m+=1; f++;} //down
          if (f>=51 && f<=61) {val(); n+=5; m-=0.5; f++;} //----
        }
          
         else if (t==45) { 
          if (m>=ms+1){val(); fill(250); ellipse(40, 460, 65, 65); fill(50); noStroke(); triangle(60, 460, 30, 480, 30, 440); w0=1;} //stop
          else if (f>=0 && f%2==0 && f<=49) {val(); n+=5; m-=5; f++;} //up
          else if (f>=0 && f%2==1 && f<=49) {val(); n+=5; m-=3; f++;} //up
          else if (f==50) {val(); n+=0; m-=0; f++;} //stop
          else if (f>=61 && f%2==0 && f<=121) {val(); n+=5; m+=5; f++;} //down
          else if (f>=61 && f%2==1 && f<=121) {val(); n+=5; m+=3; f++;} //down
          if (f>=51 && f<=61) {val(); n+=5; m-=0.5; f++;} //----
        }
          
         else if (t==60) { 
          if (m>=ms+1){val(); fill(250); ellipse(40, 460, 65, 65); fill(50); noStroke(); triangle(60, 460, 30, 480, 30, 440); w0=1;} //stop
          else if (f>=0 && f%2==0 && f<=49) {val(); n+=5; m-=7; f++;} //up
          else if (f>=0 && f%2==1 && f<=49) {val(); n+=5; m-=5; f++;} //up
          else if (f==50) {val(); n+=0; m-=0; f++;} //stop
          else if (f>=61 && f%2==0 && f<=121) {val(); n+=5; m+=7; f++;} //down
          else if (f>=61 && f%2==1 && f<=121) {val(); n+=5; m+=5; f++;} //down
          if (f>=51 && f<=61) {val(); n+=5; m-=0.5; f++;} //----
         }}}}
