global.is_tutorial = true;
global.timer = 0;
global.pontuacao = 0;
movetutorial = false;
jumptutorial = false;
mousetutorial = false;
coletatutorial = false;

residuotutor[0] = obj_jornal;
residuotutor[1] = obj_bottle;
residuotutor[2] = obj_glass;
residuotutor[3] = obj_soda;
residuotutor[4] = obj_banana;

keya = spr_a;
keyw = spr_w;
keyd = spr_d;
apress = false;
wpress = false;
dpress = false;
mblpress = false;
mbrpress = false;
count = 0;

escala = 2;
boxl = sprite_get_width(spr_UIcomumdescription) * escala;
boxa = sprite_get_height(spr_UIcomumdescription) * escala;
guil = display_get_gui_width();
guia = display_get_gui_height();
xb =  guil/2 - boxl/2;
yb =  guia/2 - boxa/2;


tutorial[0] = "Use     e     para se mover"; 
tutorial[1] = "Use     para pular"
tutorial[2] = "Use os botões esquerdo e direito"
tutorial[3] = "Tente coletar os resíduos usando a cor certa"
tutorial[4] = "Agora você já sabe reciclar, se não souber ao certo que tipo de resíduo está vendo, basta pausar o jogo com espaço e passar o mouse por cima do resíduo. Pressione 'Enter' para continuar"





