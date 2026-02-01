#!/usr/bin/env bash

## its for adding your options and commands to open them
## u can add or delate items here for customization your options
browserChoose=("Firefox" "Brave") ##its your option name
browserOpen=("firefox" "brave") ##its your command to open the option

mediaChoose=("Music Player" "VLC")
mediaOpen=("ncmpcpp" "vlc")

filemanagerChoose=("Dolphin" "Yazi")
filemanagerOpen=("dolphin" "yazi")

socialmediaChoose=("Reddit" "Whatsapp")
socialmediaOpen=(
  "firefox https://www.reddit.com"
  "firefox https://web.whatsapp.com"
)

toolsChoose=("Cava" "Btop" "Wireshark" "Neofetch" "keepassxc")
toolsOpen=("cava" "btop" "wireshark" "neofetch" "keepassxc")

##looping for main menu list
while true; do
  clear
  gum style --bold --foreground 212 "=== SOFTWARE MANAGER ==="

  ##u can add new categories in MAIN_CHOICE below
  ##after add new category u must add its case below,just follow the format below
  ## add this inside  "case "$MAIN_CHOICE" ""

  ## Format :
  ##"social media(u can change the name)" ) 
  ##  SUB_CHOICE=$(gum choose "${socialmediaChoose[@]}" "Back")
  ##  [[ "$SUB_CHOICE" == "Back" ]] && continue
  ##  for i in "${!socialmediaChoose[@]}"; do
  ##    if [[ "$SUB_CHOICE" == "${socialmediaChoose[$i]}" ]]; then
  ##      eval "${socialmediaOpen[$i]}" &
  ##      break
  ##    fi
  ##  done
  ##  ;;

  MAIN_CHOICE=$(gum choose \
    "Browser" \
    "Social Media" \
    "Media" \
    "File Manager" \
    "Tools" \
    "Exit")

  case "$MAIN_CHOICE" in
    "Browser")
      SUB_CHOICE=$(gum choose "${browserChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!browserChoose[@]}"; do
        if [[ "$SUB_CHOICE" == "${browserChoose[$i]}" ]]; then
          ${browserOpen[$i]} &
          break
        fi
      done
      ;;

    "Social Media")
      SUB_CHOICE=$(gum choose "${socialmediaChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!socialmediaChoose[@]}"; do
        if [[ "$SUB_CHOICE" == "${socialmediaChoose[$i]}" ]]; then
          eval "${socialmediaOpen[$i]}" &
          break
        fi
      done
      ;;

    "Media")
      SUB_CHOICE=$(gum choose "${mediaChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!mediaChoose[@]}"; do
        if [[ "$SUB_CHOICE" == "${mediaChoose[$i]}" ]]; then
          ${mediaOpen[$i]} &
          break
        fi
      done
      ;;

    "File Manager")
      SUB_CHOICE=$(gum choose "${filemanagerChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!filemanagerChoose[@]}"; do
        if [[ "$SUB_CHOICE" == "${filemanagerChoose[$i]}" ]]; then
          ${filemanagerOpen[$i]} &
          break
        fi
      done
      ;;

    "Tools")
      SUB_CHOICE=$(gum choose "${toolsChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!toolsChoose[@]}"; do
        if [[ "$SUB_CHOICE" == "${toolsChoose[$i]}" ]]; then
          ${toolsOpen[$i]} &
          break
        fi
      done
      ;;

    "Exit")
      echo "exit..."
      break
      ;;
  esac
done
