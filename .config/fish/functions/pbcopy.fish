# Defined in - @ line 0
function pbcopy --description 'alias pbcopy=xclip -selection clipboard'
	xclip -selection clipboard $argv;
end
