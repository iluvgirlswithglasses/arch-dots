
##############################
#### ---- name alias ---- ####
##############################

alias py="python3";
alias vim="nvim";


##############################
#### ---- mpv alias ---- #####
##############################

# mpv plays a file
function mpvp() {
	mpv "`ls | sed -n $1p`";
}

# mpv plays audio with no display
function mpva() {
	mpv "`ls | sed -n $1p`" --no-audio-display;
}

# mpv plays everything in folder
function mpvf() {
        ls | egrep '\.flac$|\.wav$|\.ogg$|\.mka$|\.webm$|\.m4a$|\.mp3$|\.mkv$|>'

        mpv -playlist=".mpv-pl-list";
        rm ".mpv-pl-list";
}

# mpv plays everything in folder with no display
function mpvl() {
	ls | egrep '\.flac$|\.wav$|\.ogg$|\.mka$|\.webm$|\.m4a$|\.mp3$|\.mkv$|\.mp4$' > ".mpv-pl-list";

	mpv -playlist=".mpv-pl-list" --no-audio-display;
	rm ".mpv-pl-list";
}


#####################################################
#### ---- quick terminal directory actions ---- #####
#####################################################

# print file with index $1
function lsii() {
	ls | sed -n $1p;
}

# cd to folder with index $1
function cdi() {
	cd "`ls | sed -n $1p`";
}

# copy $1 to clipboard
function clip() {
	echo "$1" | xsel --clipboard;
}

# yank current directory path
function yd() {
	echo "`readlink -f ./`" | xsel --clipboard;
}

# yank the path of the file with index $1
function yf() {
    echo "`readlink -f ./`/`ls | sed -n $1p`" | xsel --clipboard
}


################################
#### ---- conversions ---- #####
################################

# download via m3u8 link
function m3u8dl() {
	ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i "$1" -c copy "$2";
}

function md2pdf() {
	pandoc --pdf-engine=xelatex "$1.md" -o "$1.pdf";
}


##############################################################
#### ---- what linux machine doesn't have neofetch ! ---- ####
##############################################################

neofetch;
printf "lets all love lain\n";

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
