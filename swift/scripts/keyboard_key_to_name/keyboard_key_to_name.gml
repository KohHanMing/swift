function keyboard_key_to_name(_key){
	var name = global.keyboard_key_to_name[?_key];
	if (name == undefined) return "";
	return name;
}