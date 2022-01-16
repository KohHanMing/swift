///@description Append SLIDER to _menu
///@param _menu Menu ds_list
///@param _text Display Text

function menu_add_text(_menu, _text) {
	ds_list_add(_menu, ["TEXT", _text]);
}