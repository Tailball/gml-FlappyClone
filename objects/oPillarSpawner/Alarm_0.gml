var curDistanceBetweenPillars = random_range(_minDistanceBetweenPillars, _maxDistanceBetweenPillars);
var curDiversion = random_range(-_maxDiversion, _maxDiversion);
var spawnY = (room_height / 2) + curDiversion - _spawnYOffset;


instance_create_layer(_spawnX, spawnY + curDistanceBetweenPillars, "Instances", oPillarUp);
instance_create_layer(_spawnX, spawnY - curDistanceBetweenPillars, "Instances", oPillarDown);


alarm[0] = _spawnRate;