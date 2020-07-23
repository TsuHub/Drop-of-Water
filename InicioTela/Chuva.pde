import java.util.Random;

public class Chuva
{
  Random rdm   = new Random();
  Velocidade v = new Velocidade();
  int x[]   = new int[1000];
  int y[]   = new int[1000];
  int esp[] = new int[1000];     //= rdm.nextInt( 4) +  1;
  int com[] = new int[1000];     //= rdm.nextInt(10) + 16;
  int i = rdm.nextInt(1000);
  float vel;
  
  int aux = i;
  
  public void chovendo(float tempo)
  {
    vel = v.setVelocidade(tempo);
    x[i] = rdm.nextInt(1300) + 1;
    esp[i] = rdm.nextInt(   3) +  1;
    com[i] = rdm.nextInt(  10) + 16;
    
    stroke(255);
    strokeWeight(esp[i]);
    line(aux, vel, aux, vel + com[i]);
    
    text("Posição x da chuva: " + x[i], 300, 650);
    text("Espessura:   " + esp[i], 600, 650);
    text("Comprimento: " + com[i], 600, 620);
  }
}



/*
import java.util.Random;

public class Chuva
{
  Random rdm = new Random();
  Velocidade v = new Velocidade();

  float vel1;
  float vel2;

  int aux1 = rdm.nextInt(1300) + 1;
  int aux2 = rdm.nextInt(1300) + 1;
  int esp = rdm.nextInt(4) + 1;                           // espessura da gota
  int comp= rdm.nextInt(5) + 16;                         // comprimento da gota
  
  public void chovendo(float tempo)
  {
    //for(int i = 0; i < 100; i++){
    
    vel1 = v.setVelocidade(tempo);
    vel2 = v.setVelocidade(tempo);
    stroke(255);
    strokeWeight(esp);
    line(aux1, vel1, aux1, vel1 + comp);
    line(aux2, vel2, aux2, vel2 + comp);
    //}
    
    text("Posição x da chuva: " + aux, 300, 650);
    text("Espessura:   " + esp, 600, 650);
    text("Comprimento: " + comp, 600, 620);
  }
}
*/
