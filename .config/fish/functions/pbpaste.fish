# Defined in - @ line 0
function pbpaste --description 'alias pbpaste=xclip -selection clipboard -o'
	xclip -selection clipboard -o $argv;
end
