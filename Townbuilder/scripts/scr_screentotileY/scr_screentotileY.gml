function scr_screentotileY(_tX, _tY){
	var _screenX = _tX - (ROOM_W * RENDER_BORDER_SPACE_X);
	var _screenY = _tY - (ROOM_H * RENDER_BORDER_SPACE_Y);
	return floor(( _screenY / (TILE_H * RENDER_BORDER_SPACE_X) -  _screenX / (TILE_W * RENDER_BORDER_SPACE_X) ) * RENDER_BORDER_SPACE_X);
}