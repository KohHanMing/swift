///@decription Append BUTTON to _menu
///@param _menu Menu ds_list
///@param _text Button Display Text
///@param _keybind Keybind

function menu_add_keybind(_menu, _text, _keybind) {
	ds_list_add(_menu, ["KEYBIND", _text, _keybind]);
}