?- 
	window(title("Menu"), size(500, 500), class(win_pertama)).

win_pertama(init):-
	button(class(tombol_1), text("Play"), pos(110,185), size(60,30)).

win_pertama(paint):-
	pen(4, rgb(128, 128, 128)),
	line(100, 100, 100, 300),
	line(100, 100, 200, 200),
	line(200, 200, 100, 300). 

tombol_1(press):-
	window(title("Menu"), size(500, 500),class(win_dua)).

win_dua(init):-
	G_Timer := set_timer(_, 1, time_func),
	button(class(tombol_2), text("Stop"), pos(359, 180), size(180, 30)).

win_dua(paint):-
	pen(4, rgb(0, 0, 255)),
	line(350, 100, 350, 300),
	line(350, 100, 550, 100),
	line(550, 100, 550, 300),
	line(550, 300, 350, 300). 

time_func(end):-
	write('*'),
	beep.

tombol_2(press):-
	kill_timer(parent(_), G_Timer).
