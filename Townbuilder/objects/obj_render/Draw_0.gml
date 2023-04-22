/// @desc Render game
var tileData, screenX, screenY, tileIndex, tileZ;

for(var tX = 0; tX < MAP_W; tX++){
	for(var tY = 0; tY < MAP_H; tY++){
		tileData = global.theMap[# tX, tY];
		screenX = scr_tiletoscreenX(tX, tY);
		screenY = scr_tiletoscreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(tileIndex != 0) draw_sprite(spr_Static, tileIndex-1, screenX, screenY + tileZ);
	}
}