/*******************************************************************************
 * This file is part of Bombeirb.
 * Copyright (C) 2018 by Laurent Réveillère
 ******************************************************************************/
#ifndef SPRITE_H_
#define SPRITE_H_

#include <SDL/SDL.h>
#include <map.h>

// load/free game's sprites
void sprite_load();
void sprite_free();

SDL_Surface* sprite_get_player(enum direction direction);
SDL_Surface* sprite_get_player_immune(enum direction direction);
SDL_Surface* sprite_get_monster(enum direction direction);
SDL_Surface* sprite_get_princess();
SDL_Surface* sprite_get_bonus(enum bonus_type bonus_type);
SDL_Surface* sprite_get_tree();
SDL_Surface* sprite_get_box();
SDL_Surface* sprite_get_key();
SDL_Surface* sprite_get_stone();
SDL_Surface* sprite_get_door_opened();
SDL_Surface* sprite_get_door_closed();

SDL_Surface* sprite_get_number(short number);
SDL_Surface* sprite_get_banner_life();
SDL_Surface* sprite_get_banner_bomb();
SDL_Surface* sprite_get_banner_line();
SDL_Surface* sprite_get_banner_divider();
SDL_Surface* sprite_get_banner_range();
SDL_Surface* sprite_get_bomb();
SDL_Surface* sprite_get_explosion();

SDL_Surface* sprite_get_logo();
SDL_Surface* sprite_get_menu_wallpaper();
SDL_Surface* sprite_get_credits();
SDL_Surface* sprite_get_button(int button_number);
SDL_Surface* sprite_get_game_over();
SDL_Surface* sprite_get_victory();


#endif /* SPRITE_H_ */
