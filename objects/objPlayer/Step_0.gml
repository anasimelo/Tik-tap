#region Movimentação
	//Movimentação por letras
	//Futuramente você pode deixar o usuário escolher as teclas
	//cima = "W"
	teclaCima = keyboard_check_pressed(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaEsq = keyboard_check(ord("A"))
	teclaDir= keyboard_check(ord("D"))

	//Movimento por setas
	setaCima =  keyboard_check_pressed(vk_up)
	setaBaixo =  keyboard_check(vk_down)
	setaEsq =  keyboard_check(vk_left)
	setaDir =  keyboard_check(vk_right)
	
	//Barra de espaço
	barraEspaco =  keyboard_check_pressed(vk_space)
	moviVertical = barraEspaco or teclaCima or teclaCima
	
	
	//Movimentação horizontal
	moviHorizontal = -(teclaEsq or setaEsq) + (teclaDir or setaDir)
	velocidadeHorizontal = moviHorizontal * velocidade

//Movimentação vertical
	velocidadeVertical += gravidade
	
	//colisão abaixo
	if place_meeting(x,y + velocidadeVertical ,objColisao) and velocidadeVertical >0  {
		while ! place_meeting(x,y + sign(velocidadeVertical) ,objColisao) and velocidadeVertical >0{
			y +=sign(velocidadeVertical)
		}
		velocidadeVertical = 0
	}
	
	
	//Colisão para direita e esquerda
	if place_meeting(x + velocidadeHorizontal,y,objColisao){
		while ! place_meeting(x + sign(velocidadeHorizontal),y,objColisao){
		 x+= sign(velocidadeHorizontal)
		}
		velocidadeHorizontal = 0
	}
	
	x += velocidadeHorizontal
	y += velocidadeVertical
	
	if place_meeting(x,y + 1 ,objColisao) and moviVertical{
		velocidadeVertical-= 16
	}
	
