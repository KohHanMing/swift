// Keys
key_list = [
	"attack",
	"move_up",
	"move_left",
	"move_down",
	"move_right",
	"dash",
	"quickswap",
	"escape"
];

global.key_attack = mb_left;
global.key_attack_mode = "mouse";
global.key_move_up = ord("W");
global.key_move_up_mode = "keyboard";
global.key_move_left = ord("A");
global.key_move_left_mode = "keyboard";
global.key_move_down = ord("S");
global.key_move_down_mode = "keyboard";
global.key_move_right = ord("D");
global.key_move_right_mode = "keyboard";
global.key_dash = vk_space;
global.key_dash_mode = "keyboard";
global.key_quickswap = vk_shift;
global.key_quickswap_mode = "keyboard";
global.key_escape = vk_escape;
global.key_escape_mode = "keyboard";

for (var i = 0; i < array_length(key_list) ; i++) {
	variable_global_set("key_"+key_list[i]+"_down",false);
	variable_global_set("key_"+key_list[i]+"_pressed",false);
}

var l_c2s = ds_map_create();
global.keyboard_key_to_name = l_c2s;
var l_k, l_c, l_s, l_slq;

l_c2s[?1] = "LMB";
l_c2s[?2] = "RMB";
l_c2s[?3] = "MMB";

l_c2s[?27] = "Escape";
l_c2s[?32] = "Space";
l_c2s[?13] = "Enter";
l_c2s[?37] = "Left";
l_c2s[?39] = "Right";
l_c2s[?38] = "Up";
l_c2s[?40] = "Down";
l_c2s[?8] = "Backspace";
l_c2s[?9] = "Tab";
l_c2s[?16] = "Shift";
l_c2s[?17] = "Control";
l_c2s[?18] = "Alt";
l_c2s[?19] = "Pause";
l_c2s[?20] = "Capslock";
l_c2s[?160] = "LeftShift";
l_c2s[?161] = "RightShift";
l_c2s[?162] = "LeftControl";
l_c2s[?163] = "RightControl";
l_c2s[?164] = "LeftAlt";
l_c2s[?165] = "RightAlt";
l_c2s[?91] = "Windows";
l_c2s[?92] = "RightWindows";
l_c2s[?33] = "PageUp";
l_c2s[?34] = "PageDown";
l_c2s[?35] = "End";
l_c2s[?36] = "Home";
l_c2s[?44] = "PrintScreen";
l_c2s[?45] = "Insert";
l_c2s[?46] = "Delete";
l_c2s[?145] = "ScrollLock";
l_c2s[?186] = "Semicolon";
l_c2s[?187] = "Equals";
l_c2s[?188] = "Comma";
l_c2s[?189] = "Underscore";
l_c2s[?190] = "Period";
l_c2s[?191] = "Slash";
l_c2s[?192] = "Tilde";
l_c2s[?219] = "OpenBracket";
l_c2s[?220] = "BackSlash";
l_c2s[?221] = "CloseBracket";
l_c2s[?222] = "Quote";

for (l_k = 65; l_k <= 90; l_k += 1) {
    l_c = chr(l_k);
    l_c2s[?l_k] = l_c;
    l_slq = string_lower(l_c);

}

l_c2s[?48] = "D0";
l_c2s[?49] = "D1";
l_c2s[?50] = "D2";
l_c2s[?51] = "D3";
l_c2s[?52] = "D4";
l_c2s[?53] = "D5";
l_c2s[?54] = "D6";
l_c2s[?55] = "D7";
l_c2s[?56] = "D8";
l_c2s[?57] = "D9";

for (l_k = 112; l_k < 136; l_k += 1) {
    l_c = "F" + string(l_k - 111);
    l_c2s[?l_k] = l_c;
    l_slq = string_lower(l_c);

}

l_c2s[?144] = "Numlock";
l_c2s[?111] = "Divide";
l_c2s[?106] = "Multiply";
l_c2s[?107] = "Add";
l_c2s[?109] = "Subtract";
l_c2s[?110] = "NumpadDelete";

for (l_k = 96; l_k < 106; l_k += 1) {
    l_c = string(l_k - 96);
    l_s = "Numpad" + l_c;
    l_c2s[?l_k] = l_c;
    l_slq = string_lower(l_c);

    l_s = "Num" + l_c;
    l_slq = string_lower(l_s);

}

l_c2s[?0] = "None";

for (l_k = 1; l_k < 256; l_k += 1) {
    l_s = "Key" + string(l_k);
    if (!ds_map_exists(l_c2s, l_k)) l_c2s[?l_k] = l_s;
    l_slq = string_lower(l_s);

}