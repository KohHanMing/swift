function ds_list_to_array(_list) {
  var _array = [];
  for (var i = 0; i < ds_list_size(_list); i += 1) {
    array_push(_array, _list[| i]);
  }
  return _array;
}