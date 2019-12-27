/// @description Insert description here
// You can write your code in this editor

if (os_type == os_windows)
{
    // Not all commmands will be recognized - i.e. the Windows-specific "start" command will not work
	var place=environment_get_variable("LOCALAPPDATA") + "\\CubeAdventureRemake";
    ExecuteShell("\"C:\\Windows\\System32\\explorer.exe\""+place, true);
    
   
}