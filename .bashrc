
### func alias
# mpvp means mpv play
function mpvp() {
	mpv "`ls | sed -n $1p`";
}

# mpv list
function mpvl() {
	ls | egrep '\.flac$|\.wav$|\.ogg$|\.mka$|\.webm$|\.m4a$|\.mp3$|\.mkv$|\.mp4$' > ".mpv-pl-list";

	mpv -playlist=".mpv-pl-list" --no-audio-display;
	rm ".mpv-pl-list";
}

function lsii() {
	ls | sed -n $1p;
}

function cdi() {
	cd "ls | sed -n $1p";
}

function m3u8dl() {
	ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i "$1" -c copy "$2";
}

function cd() {
	d="$*";
	if [ $# -eq 0 ]; then
		d=${HOME};
	fi;
	builtin cd "${d}" && lsi;
}

function clip() {
	echo "$1" | xsel --clipboard;
}

### alias
alias py="python3";

### what linux machine doesn't have neofetch !
neofetch;
printf "lets all love lain\n";


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
