#------------------------------------------------------------------------------#
# notes
# This file uses gitignore.io, which uses CRLF.
# To replace them by LF, you can use dos2unix

#------------------------------------------------------------------------------#
# download output from gitignore and append it to content

content+="\
#------------------------------------------------------------------------------#
# gitignore"

ignored_items=(
    intellij
    macos
    python
    rust
    visualstudiocode
    windows
)

ignored_items="${ignored_items[@]}"
content+="$(curl -L -s https://www.gitignore.io/api/${ignored_items// /,})\n"



#------------------------------------------------------------------------------#
# append custom

content+="\n\n\n\
#------------------------------------------------------------------------------#
# Custom

/custom/

.vscode/"



#------------------------------------------------------------------------------#
# print to console for piping

echo "${content}"

