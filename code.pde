int[] choice = 
{
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
};

int[] answer = 
{
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
    round(random(4)),
};

int[] linkedto = 
{
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
    round(random(11)),
};

var click = new Howl({
  urls: ['sound/click.mp3', 'sound/click.ogg']
});

var bgm = new Howl({
  urls: ['sound/bgm.mp3', 'sound/bgm.ogg']
});

int timeleft = 60*frameRate;

int reveal;

void setup()
{
  bgm.play();
  size(1420, 799);
  PFont courier = loadFont("courier");
  textFont(courier, 14);  
  noStroke();
}

void draw(){  
  background(255);
  if (timeleft > 1) {
    timeleft -= 1;
    translate(1420/2,799/2);
    fill(0);
    text("You found an ancient device that has access to other worlds.",-230,-210);
    text("The world's greatest pianist volunteers to take part in your experiment about parellel worlds.",-380,-190);
    text("Click on the digits to cycle between 1 - 5.",-170,-170);
    text("Green means that the certain body part will be succesfully warped.",-250,-150);
    fill(180);
    rect(-150,-80,30,799);
    rect(120,-80,30,799);
    fill(255,249,166);
    beginShape();
    vertex(-110,-30);
    vertex(-160,-80);
    vertex(-110,-130);
    vertex(110,-130);
    vertex(160,-80);
    vertex(110,-30);
    vertex(110,799);
    vertex(-110,799);
    vertex(-110,-30);
    endShape();
    fill(205,199,116);
    rect(-((60*frameRate)/(frameRate)),-120,60*frameRate/(frameRate/2),10);
    fill(50);
    rect(-((60*frameRate)/(frameRate)),-120,timeleft/(frameRate/2),10);
    fill(0);
    rect(-100,-100,200,799);
  
    if (choice[0] == answer[0]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[0]+1,-7,-50);
  
    if (choice[1] == answer[1]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[1]+1,-7,-10);
  
    if (choice[2] == answer[2]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[2]+1,-7,30);
  
    if (choice[3] == answer[3]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[3]+1,-7,70);
  
    if (choice[4] == answer[4]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[4]+1,-7,110);
  
    if (choice[5] == answer[5]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[5]+1,-7,150);
  
    if (choice[6] == answer[6]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[6]+1,-7,190);
  
    if (choice[7] == answer[7]) 
    {
    fill(0,255,0);
    }
    else
    {
    fill(255);
    }
    text(choice[7]+1,-7,230);
  
    if (choice[8] == answer[8]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[8]+1,-7,270);
  
    if (choice[9] == answer[9]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[9]+1,-7,310);
  
    if (choice[10] == answer[10]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[10]+1,-7,350);
  
    if (choice[11] == answer[11]) 
    {
        fill(0,255,0);
    }
    else
    {
        fill(255);
    }
    text(choice[11]+1,-7,390);
  }
  else
  {
    if (reveal < 400) 
    {
        reveal += 1;
    }
    translate(1420/2,799/2);
    fill(0);
    text("Status of test subject",0,-250);
    if (reveal > 20) {
        if (choice[0] == answer[0]) 
        {
            text("Head in parellel world",0,-200);
        }
        else
        {
            text("Head left here",0,-200);
        }
    }
    
    if (reveal > 40) {
        if (choice[1] == answer[1]) 
        {
            text("Brain still operating",0,-150);
        }
        else
        {
            text("Brain not functioning",0,-150);
        }
    }
    
    if (reveal > 60) {
        if (choice[2] == answer[2]) 
        {
            text("Trunk in parellel world",0,-100);
        }
        else
        {
            text("Trunk left here",0,-100);
        }
    }
    
    if (reveal > 80) {
        if (choice[3] == answer[3]) 
        {
            text("Major organs functioning",0,-50);
        }
        else
        {
            text("Major organ failure",0,-50);
        }
    }
    
    if (reveal > 100) {
        if (choice[4] == answer[4]) 
        {
            text("Left arm in parellel world",0,0);
        }
        else
        {
            text("Left arm left here",0,0);
        }
    }
    
    if (reveal > 120) {
        if (choice[5] == answer[5]) 
        {
            text("Left hand in parellel world",0,50);
        }
        else
        {
            text("Left hand left here",0,50);
        }
    }
    
    if (reveal > 140) {
        if (choice[6] == answer[6]) 
        {
            text("Right arm in parellel world",0,100);
        }
        else
        {
            text("Right arm left here",0,100);
        }
    }
    
    if (reveal > 160) {
        if (choice[7] == answer[7]) 
        {
            text("Right hand in parellel world",0,150);
        }
        else
        {
            text("Right hand left here",0,150);
        }
    }
    
    if (reveal > 180) {
        if (choice[8] == answer[8]) 
        {
            text("Left leg in parellel world",0,200);
        }
        else
        {
            text("Left leg left here",0,200);
        }
    }
    
    if (reveal > 200) {
        if (choice[9] == answer[9]) 
        {
            text("Left leg functional",0,250);
        }
        else
        {
            text("Left leg paralysed",0,250);
        }
    }
    
    if (reveal > 220) {
        if (choice[10] == answer[10]) 
        {
            text("Right leg in parellel world",0,300);
        }
        else
        {
            text("Right leg left here",0,300);
        }
    }
    
    if (reveal > 240) {
        if (choice[11] == answer[11]) 
        {
            text("Right leg functional",0,350);
        }
        else
        {
            text("Right leg paralysed",0,350);
        }
    }
    
    if (reveal > 300) {
        if (choice[0] == answer[0] && choice[1] == answer[1] && choice[2] == answer[2] && choice[3] == answer[3]) 
        {
            text("Alive and kickin'.",-200,0);
            if (choice[4] == answer[4] && choice[5] == answer[5] && choice[6] == answer[6] && choice[7] == answer[7] && choice[8] == answer[8] && choice[9] == answer[9] && choice[10] == answer[10] && choice[11] == answer[11]) 
            {
                text("Your discoveries of",-200,14);
                text("a parellel world will",-200,14);
                text("shock mankind.",-200,28);
            }
            else
            {
                text("But he's probably",-200,14);
                text("handicapped now.",-200,28);
                text("Better not let the",-200,42);
                text("cops know.",-200,56);
            }
        }
        else
        {
            text("You just murdered",-200,14);
            text("the world's greatest",-200,28);
            text("pianist with your",-200,42);
            text("parellel world-",-200,56);
            text("travelling device.",-200,70);
        }
    }
  }
}

void mouseClicked() {
    if (timeleft > 0) {
    if(dist((1420/2 - 7),(799/2 - 50), mouseX, mouseY) < 7) {
        click.play();
    
        if (choice[0] < 4) {
            choice[0] = choice[0] + 1;
        }
        else
        {
            choice[0] = 0;
        }
        
        if (choice[(linkedto[0])] < 4) {
            choice[(linkedto[0])] = choice[(linkedto[0])] + 1;
        }
        else
        {
            choice[(linkedto[0])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 - 10), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[1] < 4) {
            choice[1] = choice[1] + 1;
        }
        else
        {
            choice[1] = 0;
        }
        
        if (choice[(linkedto[1])] < 4) {
            choice[(linkedto[1])] = choice[(linkedto[1])] + 1;
        }
        else
        {
            choice[(linkedto[1])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 30), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[2] < 4) {
            choice[2] = choice[2] + 1;
        }
        else
        {
            choice[2] = 0;
        }
        
        if (choice[(linkedto[2])] < 4) {
            choice[(linkedto[2])] = choice[(linkedto[2])] + 1;
        }
        else
        {
            choice[(linkedto[2])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 70), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[3] < 4) {
            choice[3] = choice[3] + 1;
        }
        else
        {
            choice[3] = 0;
        }
        
        if (choice[(linkedto[3])] < 4) {
            choice[(linkedto[3])] = choice[(linkedto[3])] + 1;
        }
        else
        {
            choice[(linkedto[3])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 110), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[4] < 4) {
            choice[4] = choice[4] + 1;
        }
        else
        {
            choice[4] = 0;
        }
        
        if (choice[(linkedto[4])] < 4) {
            choice[(linkedto[4])] = choice[(linkedto[4])] + 1;
        }
        else
        {
            choice[(linkedto[4])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 150), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[5] < 4) {
            choice[5] = choice[5] + 1;
        }
        else
        {
            choice[5] = 0;
        }
        
        if (choice[(linkedto[5])] < 4) {
            choice[(linkedto[5])] = choice[(linkedto[5])] + 1;
        }
        else
        {
            choice[(linkedto[5])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 190), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[6] < 4) {
            choice[6] = choice[6] + 1;
        }
        else
        {
            choice[6] = 0;
        }
        
        if (choice[(linkedto[6])] < 4) {
            choice[(linkedto[6])] = choice[(linkedto[6])] + 1;
        }
        else
        {
            choice[(linkedto[6])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 230), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[7] < 4) {
            choice[7] = choice[7] + 1;
        }
        else
        {
            choice[7] = 0;
        }
        
        if (choice[(linkedto[7])] < 4) {
            choice[(linkedto[7])] = choice[(linkedto[7])] + 1;
        }
        else
        {
            choice[(linkedto[7])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 270), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[8] < 4) {
            choice[8] = choice[8] + 1;
        }
        else
        {
            choice[8] = 0;
        }
        
        if (choice[(linkedto[8])] < 4) {
            choice[(linkedto[8])] = choice[(linkedto[8])] + 1;
        }
        else
        {
            choice[(linkedto[8])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 310), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[9] < 4) {
            choice[9] = choice[9] + 1;
        }
        else
        {
            choice[9] = 0;
        }
        
        if (choice[(linkedto[9])] < 4) {
            choice[(linkedto[9])] = choice[(linkedto[9])] + 1;
        }
        else
        {
            choice[(linkedto[9])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 350), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[10] < 4) {
            choice[10] = choice[10] + 1;
        }
        else
        {
            choice[10] = 0;
        }
        
        if (choice[(linkedto[10])] < 4) {
            choice[(linkedto[10])] = choice[(linkedto[10])] + 1;
        }
        else
        {
            choice[(linkedto[10])] = 0;
        }
    }
    
    if(dist((1420/2 - 7),(799/2 + 390), mouseX, mouseY) < 7) {
        click.play();
        
        if (choice[11] < 4) {
            choice[11] = choice[11] + 1;
        }
        else
        {
            choice[11] = 0;
        }
        
        if (choice[(linkedto[11])] < 4) {
            choice[(linkedto[11])] = choice[(linkedto[11])] + 1;
        }
        else
        {
            choice[(linkedto[11])] = 0;
        }
    }
    }
}