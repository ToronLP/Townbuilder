/// @desc Build the map

layer_set_visible("Map", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++){
	for (var tY = 0; tY < MAP_H; tY++){
		var tileMapData = tilemap_get(tileMap, tX, tY);
		//Format: [Sprite, Z]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0; //irandom(3);
		global.theMap[# tX, tY] = thisTile;
	}
}

layer_set_visible("Buildings", false);

global.theBuildings = ds_grid_create(MAP_W, MAP_H);

var tileBuildings = layer_tilemap_get_id("Buildings");

for (var tX = 0; tX < MAP_W; tX++){
	for (var tY = 0; tY < MAP_H; tY++){
		var tileBuildingsData = tilemap_get(tileBuildings, tX, tY);
		//Format: [Sprite, Z]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileBuildingsData;
		thisTile[TILE.Z] = -8; //irandom(3);
		global.theBuildings[# tX, tY] = thisTile;
	}
}