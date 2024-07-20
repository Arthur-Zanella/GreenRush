//Inicializando as variáveis

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()
guiMargin = 10;

titleYExtra = 64;

menuX = guiWidth+200;
menuY = guiHeight - guiMargin;

menuXTarget = guiWidth/2;
menuSpeed = 25; //lower is faster
menuFont = fMenu;
//font_
menuItemheight = (font_get_size(menuFont)+32) * oGame.yScale;
menuCommitted = -1;
menuControl = true;

menu[2] = "Play";
menu[1] = "Options";
menu[0] = "Quit game";

menuTop = menuY - ((menuItemheight * oGame.yScale) * array_length(menu));

menuCursor = 2;

menuCursorPrevious = -1;

itemSelected = false;

title = "Green Rush";

//Cada função tem uma forma de ser executada e cada objeto filho pode ter uma função customizada feita pelo dev
menuFunction[2] = function() { SlideTransition(TRANS_MODE.GOTO, Cenario); }
menuFunction[1] = function() { SlideTransition(TRANS_MODE.GOTO, rOptions); }
menuFunction[0] = function() { game_end(); }

//Condição para executar a função do botão clicado
condition = function() { return (menuX > guiWidth+150); }

//Ao clicar em um botão o que acontece pode também ser customizado ao criar uma nova function
mouseClick = function(){
	menuXTarget = guiWidth+200;
	menuCommitted = menuCursor;
	if(menuCommitted == 2){
		
	}else{
		
	}
	menuControl = false;
}