#!/bin/bash
material_darker_black="#303030"
material_darker_blue="#82aaff"
material_darker_yellow="#ffcb6b"
material_darker_red="#F07178"
material_darker_white="#b0bec5"
material_darker_green="#c3e88d"
material_darker_visual_grey="#8c8b8b"
material_darker_comment_grey="#474747"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$material_darker_white"
set "message-bg" "$material_darker_black"

set "message-command-fg" "$material_darker_white"
set "message-command-bg" "$material_darker_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$material_darker_black"
setw "window-status-bg" "$material_darker_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$material_darker_black"
setw "window-status-activity-fg" "$material_darker_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$material_darker_comment_grey"
set "window-active-style" "fg=$material_darker_white"

set "pane-border-fg" "$material_darker_white"
set "pane-border-bg" "$material_darker_black"
set "pane-active-border-fg" "$material_darker_green"
set "pane-active-border-bg" "$material_darker_black"

set "display-panes-active-colour" "$material_darker_yellow"
set "display-panes-colour" "$material_darker_blue"

set "status-bg" "$material_darker_black"
set "status-fg" "$material_darker_white"

set "@prefix_highlight_fg" "$material_darker_black"
set "@prefix_highlight_bg" "$material_darker_green"
set "@prefix_highlight_copy_mode_attr" "fg=$material_darker_black,bg=$material_darker_green"
set "@prefix_highlight_output_prefix" "  "

status_widgets=$(get "@material_darker_widgets")
time_format=$(get "@material_darker_time_format" "%R")
date_format=$(get "@material_darker_date_format" "%d.%m.%Y")

set "status-right" "#[fg=$material_darker_white,bg=$material_darker_black,nounderscore,noitalics]  ${time_format}    ${date_format}  #h "
set "status-left" "#[fg=$material_darker_green,bold]   #S #{prefix_highlight}#[fg=$material_darker_green,bg=$material_darker_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$material_darker_white] #I: #W "
set "window-status-current-format" "#[fg=$material_darker_yellow,nobold] #I: #W "
