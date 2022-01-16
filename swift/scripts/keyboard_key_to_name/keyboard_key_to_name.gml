function key_to_name(_key){
	var name = global.key_to_name[?_key];
	if (name == undefined) return "";
	return name;
}