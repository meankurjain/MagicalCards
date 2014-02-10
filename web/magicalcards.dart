import 'dart:html';
ButtonElement Row1, Row2, Row3, NewGame;


int a, b, i, j, nn;
var obj = new List(22);
var obj1 = new List(22);
var obj2 = new List(22);
var obj3 = new List(22);
var obj4 = new List(22);
var obj5 = new List(22);
var obj6 = new List(22);
var obj7 = new List(22);


void main() {
  
  a = 0;
  for (i = 0; i < 22; i++)
  {
     obj[i] = 'images/$i.bmp';
  }
  obj7[0] = 'images/22.bmp';
  Row1 = querySelector('#row1');
  Row1.onClick.listen(row1Fun);
  Row2 = querySelector('#row2');
  Row2.onClick.listen(row2Fun);
  Row3 = querySelector('#row3');
  Row3.onClick.listen(row3Fun);
  NewGame = querySelector('#newGame');
  NewGame.onClick.listen(newGameFun);
}

void newGameFun(Event abc){  
  querySelector("#desc").text = "Think of any card on the screen and remember it, but\ndon't tell me what it is. I will only ask you to tell me which of the three rows the card is in. Once you have\nselected a Card Press the Row button for the card.";
  a = 0;
  obj7[0] = 'images/22.bmp';
  shuffle();
  images();
}

void row1Fun(Event abc){  
  try
  {
  
  
  if (a == 0)
  {
    querySelector("#desc").text = "Now i have suffled the deck. find the card you had\nselected and tell me which row it is now";
    for (int i = 1; i <= 7; i++)
    {
      obj3[i] = obj[i];
    }
  }
  else if (a == 1)
  {
    querySelector("#desc").text = "For the last time, find the card you had selected and tell me which row it is now.";
    for (int i = 1; i <= 7; i++)
    {
      obj4[i] = obj[i];
    }
    int k = 1;
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj3[i] == obj4[j])
        {
          obj5[k] = obj3[i];
          k++;
        }
      }
    }
  }
  else if (a == 2)
  {
    querySelector("#desc").text = "\n\n           Magic!!! Its your Card!!!";
    for (i = 1; i <= 7; i++)
    {
      obj6[i] = obj[i];
    }
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj5[i] == obj6[j])
        {
          obj7[0] = obj5[i];
        }
      }
    }
  }
  a++;
  obj1[1] = obj[8];
  obj1[2] = obj[11];
  obj1[3] = obj[14];
  obj1[4] = obj[3];
  obj1[5] = obj[6];
  obj1[6] = obj[16];
  obj1[7] = obj[19];
  obj1[8] = obj[9];
  obj1[9] = obj[12];
  obj1[10] = obj[1];
  obj1[11] = obj[4];
  obj1[12] = obj[7];
  obj1[13] = obj[17];
  obj1[14] = obj[20];
  obj1[15] = obj[10];
  obj1[16] = obj[13];
  obj1[17] = obj[2];
  obj1[18] = obj[5];
  obj1[19] = obj[15];
  obj1[20] = obj[18];
  obj1[21] = obj[21];
  for (i = 1; i < 22; i++)
  {
    obj[i] = obj1[i];
  }
  if (a < 3)
  {
    images();
  }
  else
  {
    result();
  }
  }
  catch(exception, stackTrace)
  {
    
    
    querySelector("#desc").text = "Think of any card on the screen and remember it, but\ndon't tell me what it is. I will only ask you to tell me which of the three rows the card is in. Once you have\nselected a Card Press the Row button for the card.";
    a = 0;
    obj7[0] = null;
    shuffle();
    images();
  }
}
void row2Fun(Event abc){
  try
  {
  if (a == 0)
  {
    querySelector("#desc").text = "Now i have suffled the deck. find the card you had\nselected and tell me which row it is now";
    j = 8;
    for (i = 1; i <= 7; i++)
    {
      obj3[i] = obj[j];
      j++;
    }
  }
  else if (a == 1)
  {
    querySelector("#desc").text = "For the last time, find the card you had selected and tell me which row it is now.";
    j = 8;
    for (i = 1; i <= 7; i++)
    {
      obj4[i] = obj[j];
      j++;
    }
    int k = 1;
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj3[i] == obj4[j])
        {
          obj5[k] = obj3[i];
          k++;
        }
      }
    }
  }
  else if (a == 2)
  {
    querySelector("#desc").text = "\n\n          Magic!!! Its your Card!!!";
    j = 8;
    for (i = 1; i <= 7; i++)
    {
      obj6[i] = obj[j];
      j++;
    }
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj5[i] == obj6[j])
        {
          obj7[0] = obj5[i];
        }
      }
    }
  }
  a++;
  obj1[1] = obj[1];
  obj1[2] = obj[4];
  obj1[3] = obj[7];
  obj1[4] = obj[10];
  obj1[5] = obj[13];
  obj1[6] = obj[16];
  obj1[7] = obj[19];
  obj1[8] = obj[2];
  obj1[9] = obj[5];
  obj1[10] = obj[8];
  obj1[11] = obj[11];
  obj1[12] = obj[14];
  obj1[13] = obj[17];
  obj1[14] = obj[20];
  obj1[15] = obj[3];
  obj1[16] = obj[6];
  obj1[17] = obj[9];
  obj1[18] = obj[12];
  obj1[19] = obj[15];
  obj1[20] = obj[18];
  obj1[21] = obj[21];
  for (i = 1; i < 22; i++)
  {
    obj[i] = obj1[i];
  }
  if (a < 3)
  {
    images();
  }
  else
  {
    result();
  }
  }
  catch(exception, stackTrace)
  {
    
    
    querySelector("#desc").text = "Think of any card on the screen and remember it, but\ndon't tell me what it is. I will only ask you to tell me which of the three rows the card is in. Once you have\nselected a Card Press the Row button for the card.";
    a = 0;
    obj7[0] = null;
    shuffle();
    images();
  }
}
void row3Fun(Event abc){
  try
  {
  if (a == 0)
  {
    querySelector("#desc").text = "Now i have suffled the deck. find the card you had\nselected and tell me which row it is now";
    j = 15;
    for (i = 1; i <= 7; i++)
    {
      obj3[i] = obj[j];
      j++;
    }
  }
  else if (a == 1)
  {
    querySelector("#desc").text = "For the last time, find the card you had selected and tell me which row it is now.";
    j = 15;
    for (i = 1; i <= 7; i++)
    {
      obj4[i] = obj[j];
      j++;
    }
    int k = 1;
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj3[i] == obj4[j])
        {
          obj5[k] = obj3[i];
          k++;
        }
      }
    }
  }
  else if (a == 2)
  {
    querySelector("#desc").text = "\n\n          Magic!!! Its your Card!!!";
    j = 15;
    for (i = 1; i <= 7; i++)
    {
      obj6[i] = obj[j];
      j++;
    }
    for (i = 1; i <= 7; i++)
    {
      for (j = 1; j <= 7; j++)
      {
        if (obj5[i] == obj6[j])
        {
          obj7[0] = obj5[i];
        }
      }
    }
  }
  a++;
  obj1[1] = obj[8];
  obj1[2] = obj[11];
  obj1[3] = obj[14];
  obj1[4] = obj[17];
  obj1[5] = obj[20];
  obj1[6] = obj[2];
  obj1[7] = obj[5];
  obj1[8] = obj[9];
  obj1[9] = obj[12];
  obj1[10] = obj[15];
  obj1[11] = obj[18];
  obj1[12] = obj[21];
  obj1[13] = obj[3];
  obj1[14] = obj[6];
  obj1[15] = obj[10];
  obj1[16] = obj[13];
  obj1[17] = obj[16];
  obj1[18] = obj[19];
  obj1[19] = obj[1];
  obj1[20] = obj[4];
  obj1[21] = obj[7];
  for (i = 1; i < 22; i++)
  {
    obj[i] = obj1[i];
  }
  if (a < 3)
  {
    images();
  }
  else
  {
    result();
  }
  }
  catch(exception, stackTrace)
  {
    querySelector("#desc").text = "Think of any card on the screen and remember it, but\ndon't tell me what it is. I will only ask you to tell me which of the three rows the card is in. Once you have\nselected a Card Press the Row button for the card.";
    a = 0;
    obj7[0] = null;
    shuffle();
    images();
  }
}
void shuffle()
{
  for (nn = 1; nn < 22; nn++)
  {
    obj2[nn] = 0;
    obj3[nn] = 0;
    obj4[nn] = 0;
    obj5[nn] = 0;
    obj6[nn] = 0;
    obj7[nn] = 0;
  }
}
void images(){
  
  for (i = 1; i < 22; i++)
  {
    (querySelector('#pictureBox$i') as ImageElement).src = obj[i];
  }
}
void result()
{
  for (i = 1; i < 22; i++)
  {
    if(i==11)
    {
      (querySelector('#pictureBox$i') as ImageElement).src = obj7[0];
    }
    else
    {
      (querySelector('#pictureBox$i') as ImageElement).src = obj[0];
    }
  }
}
