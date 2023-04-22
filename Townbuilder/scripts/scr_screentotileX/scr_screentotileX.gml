function scr_screentotileX(_tX, _tY){
	var _screenX = _tX - (ROOM_W * RENDER_BORDER_SPACE_X);
	var _screenY = _tY - (ROOM_H * RENDER_BORDER_SPACE_Y);
	return floor(( _screenX / (TILE_W * RENDER_BORDER_SPACE_X) + _screenY / (TILE_H * RENDER_BORDER_SPACE_X) ) * RENDER_BORDER_SPACE_X);
}