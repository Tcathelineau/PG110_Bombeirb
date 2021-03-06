/*******************************************************************************
 * This file is part of Bombeirb.
 * Copyright (C) 2018
 ******************************************************************************/

#include <SDL/SDL.h>
#include <SDL/SDL_image.h>
#include <unistd.h>

#include <constant.h>
#include <game.h>
#include <window.h>
#include <menu.h>
#include <sprite.h>
#include <misc.h>

void display_menu_fixed_elements()
{
	// wallpaper
	window_display_image(sprite_get_menu_wallpaper(), 0, 0);
	// logo
	window_display_image(sprite_get_logo(), MENU_WIDTH/2-(sprite_get_logo()->w)/2, SPLASH_MARGIN);
	// credits
	window_display_image(sprite_get_credits(), MENU_WIDTH/2-(sprite_get_credits()->w)/2, MENU_HEIGHT-SPLASH_MARGIN); // centering credits

}

void launchMenu(void)
{
	int buttons_placement_height[3], x_buttons=MENU_WIDTH/2-(sprite_get_button(0)->w)/2, button_pressed=-1;
	int button_width=sprite_get_button(0)->w, button_height=sprite_get_button(0)->h;
	int ideal_speed = 1000 / DEFAULT_GAME_FPS;
	int timer, execution_speed, done=0;
	int mouse_x, mouse_y;
	SDL_Event event;

	window_resize(MENU_WIDTH, MENU_HEIGHT);

	// Check if a game is saved
	int game_saved;
	if(access("data/player_saved.txt", F_OK) != -1) // if player_saved.txt exists
		game_saved=1;
	else
		game_saved=0;

	while(!done)
	{
		window_clear();
		// fixed elements
		display_menu_fixed_elements();

		// buttons
		buttons_placement_height[0] = 2*SPLASH_MARGIN + sprite_get_logo()->h;
		if(game_saved)
			window_display_image(sprite_get_button(0), x_buttons, buttons_placement_height[0]); // "Reprendre"
		else
			window_display_image(sprite_get_button(8), x_buttons, buttons_placement_height[0]); // "Reprendre" disabled
		buttons_placement_height[1] = buttons_placement_height[0] + SPLASH_MARGIN/2 + button_height;
		window_display_image(sprite_get_button(2), x_buttons, buttons_placement_height[1]); // "Facile"
		buttons_placement_height[2] = buttons_placement_height[1] + SPLASH_MARGIN/2 + button_height;
		window_display_image(sprite_get_button(4), x_buttons, buttons_placement_height[2]); // "Difficile"

		SDL_GetMouseState(&mouse_x, &mouse_y);
		// Hover button "Reprendre"
		if (game_saved && mouse_x>=x_buttons && mouse_x<=x_buttons+button_width && mouse_y>=buttons_placement_height[0] && mouse_y<=buttons_placement_height[0]+button_height) {
			window_display_image(sprite_get_button(1), x_buttons, buttons_placement_height[0]);
			button_pressed=0;
		}
		// Hover button "Facile"
		else if (mouse_x>=x_buttons && mouse_x<=x_buttons+button_width && mouse_y>=buttons_placement_height[1] && mouse_y<=buttons_placement_height[1]+button_height) {
			button_pressed = 1;
			window_display_image(sprite_get_button(3), x_buttons, buttons_placement_height[1]);
		}
		// Hover button "Difficile"
		else if (mouse_x>=x_buttons && mouse_x<=x_buttons+button_width && mouse_y>=buttons_placement_height[2] && mouse_y<=buttons_placement_height[2]+button_height) {
			button_pressed = 2;
			window_display_image(sprite_get_button(5), x_buttons, buttons_placement_height[2]);
		}
		else
			button_pressed=-1;


		timer = SDL_GetTicks();
		while (SDL_PollEvent(&event)) {
			switch (event.type) {
			case SDL_QUIT:
				done=1;
				break;
			case SDL_MOUSEBUTTONUP:
				if (event.button.button == SDL_BUTTON_LEFT)
				{
					switch (button_pressed) {
					case 0: // Reprendre
						done = 1;
						launchGame(game_load_from_file("data/player_saved.txt"));
						break;
					case 1: // Facile
						done = 1;
						launchGame(game_load_from_game_infos("data/game_default_easy.txt"));
						break;
					case 2: // Difficile
						done = 1;
						launchGame(game_load_from_game_infos("data/game_default_hard.txt"));
						break;
					} // END switch (button_pressed)
				} // END if (event.button.button == SDL_BUTTON_LEFT)
				break;
			}
		}

		window_refresh();
		execution_speed = SDL_GetTicks() - timer;
		if (execution_speed < ideal_speed)
			SDL_Delay(ideal_speed - execution_speed);
	}
}

void launchGame(struct game* game)
{
	window_resize(SIZE_BLOC * map_get_width(game_get_current_map(game)),
	SIZE_BLOC * map_get_height(game_get_current_map(game)) + BANNER_HEIGHT + LINE_HEIGHT);

	SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY, SDL_DEFAULT_REPEAT_INTERVAL);

	// to obtain the DEFAULT_GAME_FPS, we have to reach a loop duration of (1000 / DEFAULT_GAME_FPS) ms
	int ideal_speed = 1000 / DEFAULT_GAME_FPS;
	int timer, execution_speed;

	// game loop
	// static time rate implementation
	int done = 0;
	while (!done && !game->exit_reason) {
		timer = SDL_GetTicks();

		done = game_update(game);
		if (!game->game_status) {
			game_display(game);
		}
		else{
			break_menu_display(game);
		}


		execution_speed = SDL_GetTicks() - timer;
		if (execution_speed < ideal_speed)
			SDL_Delay(ideal_speed - execution_speed); // we are ahead of ideal time. let's wait.
	}


	switch(game->exit_reason)
	{
		case EXIT_GAME_OVER:
			if(access("data/player_saved.txt", F_OK) != -1) // if player_saved.txt exists
				remove("data/player_saved.txt");
			game_over_display();
			break;
		case EXIT_VICTORY:
			if(access("data/player_saved.txt", F_OK) != -1) // if player_saved.txt exists
				remove("data/player_saved.txt");
			victory_display();
			break;
		case EXIT_SAVE:
			game_save(game, "data/player_saved.txt");
			break;
		default:
			break;
	}

	game_free(game);
	launchMenu();
}

void game_over_display() {
	int x=MENU_WIDTH/2-(sprite_get_game_over()->w/2), y=MENU_HEIGHT/3;
	window_resize(MENU_WIDTH, MENU_HEIGHT);
	window_clear();
	display_menu_fixed_elements();
	window_display_image(sprite_get_game_over(), x, y);
	window_refresh();
	SDL_Delay(3000);
}

void victory_display() {
	int x=MENU_WIDTH/2-(sprite_get_victory()->w/2), y=MENU_HEIGHT/3;
	window_resize(MENU_WIDTH, MENU_HEIGHT);
	window_clear();
	display_menu_fixed_elements();
	window_display_image(sprite_get_victory(), x, y);
	window_refresh();
	SDL_Delay(5000);
}

void break_menu_display(struct game* game) {
	struct map* map = game_get_current_map(game);
	int x = SIZE_BLOC *map_get_width(map), y = SIZE_BLOC *map_get_height(map);;
	int buttons_placement_height[3], x_buttons=x/2-(sprite_get_button(0)->w)/2, button_pressed=-1;
	int button_width=sprite_get_button(0)->w, button_height=sprite_get_button(0)->h;
	int ideal_speed = 1000 / DEFAULT_GAME_FPS;
	int timer, execution_speed, done=0;
	int mouse_x, mouse_y;
	SDL_Event event;

		while(!done)
		{
			window_clear();

			// fixed elements
			map_display(map);
			window_display_image(sprite_get_menu_break(), x/2-(sprite_get_menu_break()->w)/2, SPLASH_MARGIN);
			window_display_image(sprite_get_credits(), x/2-(sprite_get_credits()->w)/2, y);

			// buttons
			buttons_placement_height[0] = 2*SPLASH_MARGIN + sprite_get_logo()->h;
			window_display_image(sprite_get_button(0), x_buttons, buttons_placement_height[0]); // "Reprendre"
			buttons_placement_height[1] = buttons_placement_height[0] + SPLASH_MARGIN/2 + button_height;
			window_display_image(sprite_get_button(6), x_buttons, buttons_placement_height[1]); // "Sauver et quitter"

			SDL_GetMouseState(&mouse_x, &mouse_y);
			// Hover button "Reprendre"
			if (mouse_x>=x_buttons && mouse_x<=x_buttons+button_width && mouse_y>=buttons_placement_height[0] && mouse_y<=buttons_placement_height[0]+button_height) {
				window_display_image(sprite_get_button(1), x_buttons, buttons_placement_height[0]);
				button_pressed=1;
			}
			// Hover button "Sauver et quitter"
			else if (mouse_x>=x_buttons && mouse_x<=x_buttons+button_width && mouse_y>=buttons_placement_height[1] && mouse_y<=buttons_placement_height[1]+button_height) {
				button_pressed = 2;
				window_display_image(sprite_get_button(7), x_buttons, buttons_placement_height[1]);
			}
			else
				button_pressed=-1;

			timer = SDL_GetTicks();
			while (SDL_PollEvent(&event)) {
				switch (event.type) {
				case SDL_QUIT:
					done=1;
					break;
				case SDL_KEYDOWN:
					if (event.key.keysym.sym == SDLK_p){
						game->game_status = GAME;
						game->break_time = game->break_time + SDL_GetTicks()- game->break_time_begin;
						done = 1;
					}
					break;
			case SDL_MOUSEBUTTONUP:
					if (event.button.button == SDL_BUTTON_LEFT)
					{
						switch (button_pressed) {
						case 1: // Reprendre
							done = 1;
							game->game_status = GAME;
							game->break_time = game->break_time + SDL_GetTicks()- game->break_time_begin;
							break;
						case 2: // Sauver et quitter
							game->exit_reason = EXIT_SAVE;
							done = 1;
							break;
						} // END switch (button_pressed)
					} // END if (event.button.button == SDL_BUTTON_LEFT)
					break;
				}
			}

			window_refresh();
			execution_speed = SDL_GetTicks() - timer;
			if (execution_speed < ideal_speed)
				SDL_Delay(ideal_speed - execution_speed);

		}
}

