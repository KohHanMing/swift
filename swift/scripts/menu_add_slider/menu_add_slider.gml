///@description Append SLIDER to _menu
///@param _menu Menu ds_list
///@param _text Slider Display Text
///@param _slider_min Minimum Slider Value
///@param _slider_max Maximum Slider Value
///@param _display_type Display Type
///@param _variable_name Global Variable Name to adjust
///@param _handler Function to call on update

function menu_add_slider(_menu, _text, _slider_min, _slider_max, _display_type, _variable_name, _handler){
	ds_list_add(_menu, ["SLIDER", _text, _slider_min, _slider_max, _display_type, _variable_name, _handler]);
}