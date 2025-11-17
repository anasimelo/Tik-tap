#region Movimentação
if keyboard_check(ord("A")) or keyboard_check(vk_left) and x - velocidade > 0{
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
}




if pontos == 5 and room != rmFase5{
	room_goto_next()
}
else if pontos == 5 and room == rmFase5{
	room = rmFase1
}