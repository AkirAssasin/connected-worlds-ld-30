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

var happy = new Howl({
  urls: ['sound/happy.mp3', 'sound/happy.ogg']
});

var sad = new Howl({
  urls: ['sound/sad.mp3', 'sound/sad.ogg']
});

int timeleft = 60*frameRate;

int reveal;

int testsubject = round(random(10000));

void setup()
{
  size(1420, 799);
  PFont courier = loadFont("courier");
  textFont(courier, 14);  
  noStroke();
}

void draw(){  
  background(255 - (reveal/2));
  if (timeleft > 1) {
    timeleft -= 1;
    
    translate(1420/2,799/2);
    fill(60);
    rect(-700,-100,500,300);
    rect(200,-100,500,300);
    fill(100,100,255);
    rect(-675,-75,450,250);
    fill(255);
    rect(225,-75,450,250);
    fill(100,100,255);
    rect(225,-75,450,10);
    fill(100);
    text("Sent on " + day() + "-" + month() + "-" + year(),228,-45);
    fill(0);
    text("Dear Mad Scientist/Archeologist",228,-30);
    text("Today's the big day where we will test this device!",228,-5);
    text("I'll be there at " + hour() + ":00. I can't wait to visit the",228,10);
    text("parallel world that you discovered! Well then,",228,25);
    text("I'll see you later.",228,40);
    text("Test Subject #" + testsubject,450,170);
    fill(255);
    text("Project Syskevis",-370,190);
    text("έργο συσκευής",570,190);
    text("You found an ancient device that has access to other",-670,-55);
    text("worlds. Click on the digits to cycle between 1 - 5.",-670,-35);
    text("Green means that the certain body part will be",-670,-15);
    text("successfully warped. Press the green button to warp",-670,5);
    text("immediately.",-670,25);
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
    fill(0,100,0);
    rect(-130,-90,20,20);
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
    if (reveal < 500) 
    {
        reveal += 1;
    }
    translate(1420/2,799/2);
    fill(reveal/2);
    rect(-10,-260,2,reveal*2.5);
    text("Status of test subject",0,-250);
    if (reveal > 20) {
        if (choice[0] == answer[0]) 
        {
            text("Head in parallel world",0,-200);
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
            text("Trunk in parallel world",0,-100);
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
            text("Left arm in parallel world",0,0);
        }
        else
        {
            text("Left arm left here",0,0);
        }
    }
    
    if (reveal > 120) {
        if (choice[5] == answer[5]) 
        {
            text("Left hand in parallel world",0,50);
        }
        else
        {
            text("Left hand left here",0,50);
        }
    }
    
    if (reveal > 140) {
        if (choice[6] == answer[6]) 
        {
            text("Right arm in parallel world",0,100);
        }
        else
        {
            text("Right arm left here",0,100);
        }
    }
    
    if (reveal > 160) {
        if (choice[7] == answer[7]) 
        {
            text("Right hand in parallel world",0,150);
        }
        else
        {
            text("Right hand left here",0,150);
        }
    }
    
    if (reveal > 180) {
        if (choice[8] == answer[8]) 
        {
            text("Left leg in parallel world",0,200);
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
            text("Right leg in parallel world",0,300);
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
            if (reveal < 302) {
                happy.play();
            }
            text("Alive and kickin'.",-280,0);
            if (choice[4] == answer[4] && choice[5] == answer[5] && choice[6] == answer[6] && choice[7] == answer[7] && choice[8] == answer[8] && choice[9] == answer[9] && choice[10] == answer[10] && choice[11] == answer[11]) 
            {
                text("My invention to get to",-280,14);
                text("a parallel world will",-280,14);
                text("impress everybody!",-280,28);
            }
            else
            {
                text("let's just clean these",-280,14);
                text("extra limbs before",-280,28);
                text("someone sees.",-280,42);
            }
        }
        else
        {
           if (reveal < 302) {
                sad.play();
            }
           if (choice[0] == answer[0] || choice[1] == answer[1] || choice[2] == answer[2] || choice[3] == answer[3] || choice[4] == answer[4] || choice[5] == answer[5] || choice[6] == answer[6] || choice[7] == answer[7] || choice[8] == answer[8] || choice[9] == answer[9] || choice[10] == answer[10] || choice[11] == answer[11]) {
                if (choice[1] == answer[1] && choice[3] == answer[3] && choice[9] == answer[9] && choice[11] == answer[11]) {
                    text("What a waste of time.",-280,14);
                }
                else
                {
                    text("Test subject #" + testsubject + " died with",-280,14);
                    text("some of his body parts lost",-280,28);
                    text("in another world. Well,",-280,42);
                    text("we have tons of other test",-280,56);
                    text("subjects to experiment with...",-280,70);
                }
            }
            else
            {
                text("Let's just say he died",-280,14);
                text(" of shock because my",-280,28);
                text("discovery is too awesome.",-280,42);
            }
        }
    }
    
    if (reveal > 450) {
        text("Click to try again",-280,120);
    }
  }
}

void mouseClicked() {
    if (timeleft > 1) {
    if(dist((1420/2 - 120),(799/2 - 80), mouseX, mouseY) < 10) {
        click.play();
        timeleft = 2;
    }
    
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
    else
    {
        if (reveal < 300) {
            reveal = 300;
        }
        else
        {
        choice = 
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
        answer = 
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
        linkedto =
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
        timeleft = 60*frameRate;
        reveal = 0;
        happy.stop();
        sad.stop();
        }
    }
}