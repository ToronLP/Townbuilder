/// @desc Render game
var tileData, screenX, screenY, tileIndex, tileZ;

for(var tX = 0; tX < MAP_W; tX++){
	for(var tY = 0; tY < MAP_H; tY++){
		tileData = global.theMap[# tX, tY];
		screenX = scr_tiletoscreenX(tX, tY);
		screenY = scr_tiletoscreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(scr_screentotileX(mouse_x,mouse_y) == tX) && (scr_screentotileY(mouse_x, mouse_y) == tY){
			//tileIndex = 3;
			//tileZ -= 5;
		}
		
		if(tileIndex != 0) draw_sprite(spr_Static, tileIndex-1, screenX, screenY + tileZ);
	}
}


var tileData, screenX, screenY, tileIndex, tileZ;
var mainBuildingCount = 0;

for(var tX = 0; tX < MAP_W; tX++){
	for(var tY = 0; tY < MAP_H; tY++){
		tileData = global.theBuildings[# tX, tY];
		screenX = scr_tiletoscreenX(tX, tY);
		screenY = scr_tiletoscreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(scr_screentotileX(mouse_x,mouse_y) == tX) && (scr_screentotileY(mouse_x, mouse_y) == tY){
			//tileIndex = 3;
			//tileZ += 5;
		}
		
		if(tileIndex == 1){
			mainBuildingCount+=1;
		}
		
		if(tileIndex != 0 && mainBuildingCount == 1) draw_sprite(spr_building, tileIndex-1, screenX, screenY + tileZ);
	}
}