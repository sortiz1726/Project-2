/// @description Insert description here
stringBuidler = "I need " + string(items_need) + " item";
if(items_need > 1) stringBuidler += "s";
textBox.dialouge = stringBuidler;
if(items_need == 0) alarm_set(0, 1);