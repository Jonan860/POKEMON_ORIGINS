global.event_continue = 0
barLength = 0; barX = 0; barHeight = 0; barY = 0;
if(persistenceCreatePlacement()) {
	event_inherited()
	global.event_continue = 1
}