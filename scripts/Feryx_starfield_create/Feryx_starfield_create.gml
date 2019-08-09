/*
Feryx_starfield_create(0,2,1024,1024,100,5);
//normal white stars
horizontal_speed
vertical_speed
horizontal_texture
Vertical_texture
Stars_Layer_density
Stars_Maximal_Size
*/
//speeds
sph=argument0;
spv=argument1;
//texture sizes
hs=argument2;
vs=argument3;
//layers
l1=argument4;
l2=l1;
l3=l1;
l4=l1;
l5=l1;

//Starsizes
starsize=argument5;
//generating the surfaces
sf_1=surface_create(hs,vs);
sf_2=surface_create(hs,vs);
sf_3=surface_create(hs,vs);
sf_4=surface_create(hs,vs);
sf_5=surface_create(hs,vs);
//erase old surfaces
surface_set_target(sf_1);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_2);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_3);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_4);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_5);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
//generated_backgrounds on memory
back1=0;
back2=0;
back3=0;
back4=0;
back5=0;
//GENERATOR
var i,a,b,c,d;
randomize()
for (i = 0; i < l1; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_1);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back1=background_create_from_surface(sf_1, 0, 0, hs, vs, true, true);
surface_free(sf_1);
__background_set( e__BG.Index, 2, back1 );
/*layer 1 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l2; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_1);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back2=background_create_from_surface(sf_2, 0, 0, hs, vs, true, true);
surface_free(sf_2);
__background_set( e__BG.Index, 3, back1 );
/*layer 2 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l3; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_3);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back3=background_create_from_surface(sf_3, 0, 0, hs, vs, true, true);
surface_free(sf_3);
__background_set( e__BG.Index, 4, back3 );
/*layer 3 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l4; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_4);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back4=background_create_from_surface(sf_4, 0, 0, hs, vs, true, true);
surface_free(sf_4);
__background_set( e__BG.Index, 5, back4 );
/*layer 4 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l5; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_5);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back5=background_create_from_surface(sf_5, 0, 0, hs, vs, true, true);
surface_free(sf_5);
__background_set( e__BG.Index, 6, back5 );
/*layer 5 finnis*/
Feryx_starfield_Rand();
draw_set_colour(c_white);
//check is stars visible if not is change to true the visible flag!
if (__background_get( e__BG.Visible, 2 )!=true){__background_set( e__BG.Visible, 2, true );}
if (__background_get( e__BG.Visible, 3 )!=true){__background_set( e__BG.Visible, 3, true );}
if (__background_get( e__BG.Visible, 4 )!=true){__background_set( e__BG.Visible, 4, true );}
if (__background_get( e__BG.Visible, 5 )!=true){__background_set( e__BG.Visible, 5, true );}
if (__background_get( e__BG.Visible, 6 )!=true){__background_set( e__BG.Visible, 6, true );}
//sd=0;