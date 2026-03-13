String[][] strs = new String[7][2];
PFont font;

void setup() {
  size(1920, 1080);
  font = createFont("HelveticaNeue-48.vlw", 48);
  textFont(font);
  frameRate(30);
  textAlign(CENTER);
  textSize(40);
  background(255);
  fill(0);

  strs[0][0] = "Hello, I'm Wesley Brutus";
  strs[0][1] = "Data Science & AI @ Florida International University";

  strs[1][0] = "Interested in System Design & Distributed Systems";
  strs[1][1] = "Building scalable backend infrastructure";

  strs[2][0] = "Currently building a Distributed KV Store in Go";
  strs[2][1] = "and a content ingestion pipeline like Netflix";

  strs[3][0] = "Machine Learning | AI | Quantitative Finance";
  strs[3][1] = "TensorFlow, PyTorch, Pandas, NumPy";

  strs[4][0] = "Cloud & Backend";
  strs[4][1] = "AWS | Docker | Kafka | SQL | Linux";

  strs[5][0] = "Languages";
  strs[5][1] = "Python | Java | C | C++ | Go";

  strs[6][0] = "github.com/wbrut008";
  strs[6][1] = "linkedin.com/in/wesleybrutus";
}

int i = 0;
boolean delete = false;
int s = 0;
int offset = 50;
int mainFontSize = 60;
int secondaryFontSize = 40;

void draw() {
  background(255);

  if (s < strs.length) {
    if ((strs[s][0].length() >= i || strs[s][1].length() >= i) && !delete) {

      if (strs[s][0].length() >= i) {
        textSize(mainFontSize);
        text(strs[s][0].substring(0, i), width/2, height/2 - offset);
      } else {
        textSize(mainFontSize);
        text(strs[s][0], width/2, height/2 - offset);
      }

      if (strs[s][1].length() >= i) {
        textSize(secondaryFontSize);
        text(strs[s][1].substring(0, i), width/2, height/2 + offset);
      } else {
        textSize(secondaryFontSize);
        text(strs[s][1], width/2, height/2 + offset);
      }

      i++;

    } else {

      if (!delete) {
        delay(1500);
      }

      delete = true;
    }

    if (delete) {

      if (i > 0) {

        if (i < strs[s][0].length()) {
          textSize(mainFontSize);
          text(strs[s][0].substring(0, i - 1), width/2, height/2 - offset);
        } else {
          textSize(mainFontSize);
          text(strs[s][0], width/2, height/2 - offset);
        }

        if (i < strs[s][1].length()) {
          textSize(secondaryFontSize);
          text(strs[s][1].substring(0, i - 1), width/2, height/2 + offset);
        } else {
          textSize(secondaryFontSize);
          text(strs[s][1], width/2, height/2 + offset);
        }

        i--;

      } else {
        delete = false;
        s++;
      }
    }
  }
}
