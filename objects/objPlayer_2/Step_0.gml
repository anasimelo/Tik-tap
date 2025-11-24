#region Movimentação
/*if keyboard_check(ord("A")) or keyboard_check(vk_left) and x - velocidade > 0{
	x -= velocidade
   
}

if (keyboard_check(ord("D")) or keyboard_check(vk_right))  and x + velocidade < room_width{
	x += velocidade
   
}

if (keyboard_check(ord("W")) or keyboard_check(vk_up)) and y - velocidade > 0 {
	y -= velocidade
}

if (keyboard_check(ord("S")) or keyboard_check(vk_down)) and  y + velocidade < room_height {
	y += velocidade
}*/

teclaCima = keyboard_check(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaEsq = keyboard_check(ord("A"))
	teclaDir= keyboard_check(ord("D"))

	//Movimento por setas
	setaCima =  keyboard_check(vk_up)
	setaBaixo =  keyboard_check(vk_down)
	setaEsq =  keyboard_check(vk_left)
	setaDir =  keyboard_check(vk_right)
	
	//Barra de espaço
	//barraEspaco =  keyboard_check_pressed(vk_space)
	moviVertical = /*barraEspaco or*/ - (teclaCima or setaCima) + (teclaBaixo or setaBaixo)
	moviVertical *= velocidade
	
	
	//Movimentação horizontal
	moviHorizontal = -(teclaEsq or setaEsq) + (teclaDir or setaDir)
	moviHorizontal *= velocidade
	
move_and_collide(moviHorizontal, moviVertical, objColisao)

if global.pontos == 5 and room != room_last{
	room_goto_next()
}
else if global.pontos == 5{
	room = room_first
}