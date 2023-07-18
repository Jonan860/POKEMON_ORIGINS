global.event_continue = 0
if(persistenceCreatePlacement()) {
	event_inherited()
	global.event_continue = 1
}