double aux;
float eG = 10;    // espessura da gota
float px;
float py;
float veloc;

float tempo;
float segundos;

float velocidade;

Tempo     t = new Tempo();
Chuva chuva = new Chuva();        // chuva tipo 1 tem a velocidade inicial igual a 0.

void setup()
{
  size(1300, 670);
}

void draw()
{
  background(0);
  
  tempo = t.tempo(tempo);
  segundos = 100 * tempo;
  chuva.chovendo(segundos);
  
  text("Velocidade: " + velocidade, 20, 620);
  text("Tempo: " + segundos, 20, 650);
  text("Powered by Tsuy", 1180, 650);
}
