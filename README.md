# SIBASME
simple bash software manager with gum
you can make your own software manager or shortcut

## SIBASME TUI :
![TUI MAIN MENU SIBASME](/assets/SIBASME%20TUI.png)

## HOW TO RUN :
```
bash soft.sh
```
## HOW TO RUN IN ANY TERMINAL :
1. add syntax run and location inside .bashrc
example "
```
alias software="bash /home/user/soft.sh"
```
2. activate
```
source .bashrc
```

## HOW TO ADD SHORTCUT : 
### how to add new category
1. open soft.sh file
2. add variableChoose=("name")
example :
```
SocialmediaChoose=("Reddit" "Whatsapp")
```
3. add the action variableOpen=("name) 
```
socialmediaOpen=(
  "firefox https://www.reddit.com"
  "firefox https://web.whatsapp.com"
)
```

4. make the function using format below
add this inside MAIN_CHOICE case
```
    "Social Media(you can change this)")
      SUB_CHOICE=$(gum choose "${socialmediaChoose[@]}" "Back")
      [[ "$SUB_CHOICE" == "Back" ]] && continue

      for i in "${!socialmediaChoose(u can change this too[@]}"; do
        if [[ "$SUB_CHOICE" == "${socialmediaChoose(u can change it too)[$i]}" ]]; then
          eval "${socialmediaOpen[$i]}" &
          break
        fi
      done
      ;;
```
### how to add new shortcut inside category
just add new item in choose and open array
example : 
```
mediaChoose=("Music Player" "VLC")
mediaOpen=("ncmpcpp" "vlc")
```

#### social media
📸 Instagram: [@yoga_pepsodent](https://www.instagram.com/yoga_pepsodent)



