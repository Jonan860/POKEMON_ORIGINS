if(room == game) {
	withList(statusAilmentList,
		function(statusAilment) {
			with(statusAilment) {
				if(applied) {
					draw()
				}
			} 
		}
	)
}




