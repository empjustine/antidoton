#!/bin/sh

# XDG Base Directory Specification
#
# url: https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
: ${XDG_DATA_HOME:=$HOME/.local/share}
: ${XDG_CONFIG_HOME:=$HOME/.config}
: ${XDG_DATA_DIRS:=/usr/local/share/:/usr/share/}
: ${XDG_CONFIG_DIRS:=/etc/xdg}
: ${XDG_CACHE_HOME:=$HOME/.cache}
export XDG_DATA_HOME
export XDG_CONFIG_HOME
export XDG_DATA_DIRS
export XDG_CONFIG_DIRS
export XDG_CACHE_HOME

: ${ANTIDOTON_DIR:=$XDG_DATA_HOME/antidoton}

for f in "${ANTIDOTON_DIR}/xdg-base-directory-specification.d/"*".env.sh" ; do
	test -f "$f" && . "$f"
done