function scr_tiletoscreenX(_tX, _tY){
	return ((_tX - _tY) * (TILE_W * 0.5)) + (ROOM_W * 0.5);
}