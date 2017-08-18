//円の個数
int Cnum=5;

//半径
int[] rad = new int[Cnum];

//x、y座標
float[] x = new float[Cnum];
float[] y = new float[Cnum];

//色
int[] r = new int[Cnum];
int[] g = new int[Cnum];
int[] b = new int[Cnum];

//減少率dr
float[] dr = new float[Cnum];

//振幅amp
float[] amp = new float[Cnum];

//発散収束のフラグ
int[] flag = new  int[Cnum];


//グラデーション用のパラメタ
int[] gp = new  int[Cnum];
int[] gp2 = new  int[Cnum];


//ステップカウンター
int t = 0;



//最初に一度だけ実行されます
void setup() {
  size(600, 600);
  background(255);
  //円1の設定
  rad[0]=40; r[0]=255; g[0]=180; b[0]=0; dr[0]=0.01; amp[0]=1; flag[0]=-1; gp[0]=2; gp2[0]=-2;
   
  //円2の設定
  rad[1]=5; r[1]=0; g[1]=200; b[1]=255; dr[1]=0.01; amp[1]=0.1; flag[1]=-1; gp[1]=-2; gp2[1]=2;
  
  //円3の設定
  rad[2]=2; r[2]=100; g[2]=180; b[2]=0; dr[2]=2; amp[2]=2; flag[2]=-1; gp[2]=2; gp2[2]=-2;
  
  //円4の設定
  rad[3]=5; r[3]=0; g[3]=100; b[3]=255; dr[3]=0.01; amp[3]=1; flag[3]=-1; gp[3]=-2; gp2[3]=-2;
}


//引数は、ステップ、減衰率、振幅、発散か収束かのフラグ
float cal_locate_x(int t,float dr,float amp,int sign){
  float var;
  var = 100 * exp(sign * dr * t)*sin(amp * t) + 200;
  return var;
}
 
float cal_locate_y(int t,float dr,float amp,int sign){
  float var;
  var = 100 * exp(sign * dr * t)*cos(amp * t) + 200;
  return var;
}

 
void draw(){ 
  //一度背景と同じ色の四角を画面いっぱいに描写
  //fill(255);
  //noStroke();
  //rect(0,0,600,600);

  int  i;
  for(i=0;i<2;i++){
    //円1を描写
    x[i] = cal_locate_x(t,dr[i],amp[i],flag[i]);
    y[i] = cal_locate_y(t,dr[i],amp[i],flag[i]);
    //print("1:",x[0],y[0]);
    noFill();
    r[i]+=gp[i];
    g[i]+=gp[i];
    b[i]+=gp2[i];
    stroke(r[i],g[i],b[i]);
    ellipse(x[i],y[i],rad[i],rad[i]);
  } 

  i=2;
  //円3を描写
  x[i] = cal_locate_x(t,dr[i],amp[i],flag[i]);
  y[i] = cal_locate_x(t,dr[i],amp[i],flag[i]);
  //print("1:",x[0],y[0]);
  noFill();
  r[i]+=gp[i];
  g[i]+=gp[i];
  b[i]+=gp2[i];
  stroke(r[i],g[i],b[i]);
  ellipse(x[i],y[i],rad[i],rad[i]); 

  i=3;
  //円4を描写
  x[i] = cal_locate_y(t,dr[i],amp[i],flag[i]);
  y[i] = cal_locate_x(t,dr[i],amp[i],flag[i]);
  //print("1:",x[0],y[0]);
  noFill();
  r[i]+=gp[i];
  g[i]+=gp[i];
  b[i]+=gp2[i];
  stroke(r[i],g[i],b[i]);
  ellipse(x[i],y[i],rad[i],rad[i]); 
  
  t+=1;
  delay(10); 
}