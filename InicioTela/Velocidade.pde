public class Velocidade
{
  float aceleracao = 10;
  float velocidade;
  
  public float setVelocidade(float tempo)
  {
    aceleracao += 10;
    velocidade = aceleracao * tempo;
    return velocidade;
  }
}
