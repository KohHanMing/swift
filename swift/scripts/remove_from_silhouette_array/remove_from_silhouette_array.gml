function remove_from_silhouette_array(_inst){
	// Remove Self from Silhouette Array
	SILHOUETTE_SKIP = true;
	var length = array_length(obj_silhouette.silhouette_array);
	for (var i = 0; i < length; i += 1) {
		if (obj_silhouette.silhouette_array[i] == _inst) {
			array_delete(obj_silhouette.silhouette_array, i, 1);
			length--;
			i--;
		}
	}
}