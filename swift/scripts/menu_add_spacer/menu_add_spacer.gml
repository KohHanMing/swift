///@description Append SPACER to _menu
///@param _menu Menu ds_list
///@param _text Display Text

function menu_add_spacer(_menu, _spacing) {
	ds_list_add(_menu, ["SPACER", _spacing]);
}