///@decription Append BUTTON to _menu
///@param _menu Menu ds_list
///@param _text Button Display Text
///@param _on_click Button Onclick
///@param _target (Optional) Menu Change Target

function menu_add_button(_menu, _text, _on_click, _target = NONE) {
	ds_list_add(_menu, ["BUTTON", _text, _on_click, _target]);
}