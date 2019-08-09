/*
Bcs' the originaly calls is too hard for beginners.. 
I make an easyest way to use it!
Simple call theese script at the create event!

Feryx_Star_Create(StarType,StarTextureSize,Speed,startDirection,StarsLayerDensity,StarSize,StarSpriteName,StarSpriteIndexNumber,Differentcolor);
StarType=0-white pixel based, 1-random colorized pixel based, 2-sprite based!, 3-different color pixel based,
StarTextureSize=0-256x256 Texture (for slow android),1-512x512 (good for android/web/windows),2-1024x1024 (for better devices what have a lot of memory)
Speed=Star "fly" Speed
startDirection=the direction for "fly"
StarsLayerDensity= the number for Stars on the generated texture (if u use 3000 the generator cycle run 3000*5=15000 cycle at the start! 100-200 enought! ;) )
StarSize=the Star size if u use sprite the original sprite size is 10! pixelbased: 10= 10 pixel size the Star!
StarSpriteName= the name of the sprite
StarSpriteIndexNumber= the number of the sprite sub image number 
DifferentColor = only use in mode 3!
*/
var calculatedx,calculatedy,o1,o2,o3,o4,o5,o6,o7,o8,o9;

o1=argument0;
o2=argument1;
o3=argument2;
o4=argument3;
o5=argument4;
o6=argument5;
o7=argument6;
o8=argument7;
o9=argument8;
calculatedx=(argument3*sin(argument2));//visszafejtett x
calculatedy=(argument3*cos(argument2));//visszafejtett y
/*
StarType=o1
StarTextureSize=o2
Speed=o3
startDirection=o4
StarsLayerDensity=o5
StarSize=o6
StarSpriteName=o7
StarSpriteIndexNumber=o8
*/

switch(o1){
case 0://pixel based
    switch(o2){
        case 0:Feryx_starfield_create(calculatedx,calculatedy,256,256,o5,o6); break;//256
        case 1:Feryx_starfield_create(calculatedx,calculatedy,512,512,o5,o6); break;//512
        case 2:Feryx_starfield_create(calculatedx,calculatedy,1024,1024,o5,o6); break;//1024
    } break;
case 1://randomcolor pixelbased
    switch(o2){
        case 0:Feryx_starfield_create_MULTIColor(calculatedx,calculatedy,256,256,o5,o6); break;
        case 1:Feryx_starfield_create_MULTIColor(calculatedx,calculatedy,512,512,o5,o6); break;
        case 2:Feryx_starfield_create_MULTIColor(calculatedx,calculatedy,1024,1024,o5,o6); break;
    } break;
case 2://spritebased!
    switch(o2){
        case 0:Feryx_starfield_create_SPRITE(calculatedx,calculatedy,256,256,o5,o6,o7,o8)break;
        case 1:Feryx_starfield_create_SPRITE(calculatedx,calculatedy,512,512,o5,o6,o7,o8)break;
        case 2:Feryx_starfield_create_SPRITE(calculatedx,calculatedy,1024,1024,o5,o6,o7,o8)break;
    } break;
case 3://Different color pixelbased!
    switch(o2){
        case 0:Feryx_starfield_create_Color_different(calculatedx,calculatedy,256,256,o5,o6,o9);break;
        case 1:Feryx_starfield_create_Color_different(calculatedx,calculatedy,512,512,o5,o6,o9);break;
        case 2:Feryx_starfield_create_Color_different(calculatedx,calculatedy,1024,1024,o5,o6,o9);break;
    } break;
}
