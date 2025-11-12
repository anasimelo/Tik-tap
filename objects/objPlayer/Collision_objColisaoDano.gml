global.vidas--

room_restart()

//Se chegar a 0 vidas, recebe 5 vidas, ou retorna a tela de menu
if global.vidas == 0{
	global.vidas = 5
	room = rmInicio
}