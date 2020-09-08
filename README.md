Material Square
===


Material Square Light
---
![Material Square Light (with power menu)](https://raw.githubusercontent.com/joshua-kent/material-square-polybar/media/light-19-07-2020_edit.png)

Material Square Light TP
---
![Material Square Light TP](https://raw.githubusercontent.com/joshua-kent/material-square-polybar/media/light-tp-19-07-2020_edit.png)

Material Square Dark
---
![Material Square Dark](https://raw.githubusercontent.com/joshua-kent/material-square-polybar/media/dark-19-07-2020_edit.png)

Material Square Dark TP
---
![Material Square Dark TP](https://raw.githubusercontent.com/joshua-kent/material-square-polybar/media/dark-tp-19-07-2020_edit.png)


Dependencies
---

* Polybar

Fonts:

* Material Icons font
* Noto Sans fonts
* Awesome Fonts 5

How to install
---

### Download repository

```bash
git clone https://github.com/joshua-kent/material-square-polybar.git
mv material-square-polybar material-square-polybar
cp material-square-polybar ~/.config/polybar
```

### Add to i3 configuration file (~/.config/i3/config)

For light theme
```bash
exec sh ~/.config/polybar/material-square-polybar/launch.sh light &
```

For light and transparent theme
```bash
exec sh ~/.config/polybar/material-square-polybar/launch.sh light-tp &
```

For dark theme
```bash
exec sh ~/.config/polybar/material-square-polybar/launch.sh dark &
```

For dark and transparent theme
```bash
exec sh ~/.config/polybar/material-square-polybar/launch.sh dark-tp &
```

Other notices
---

This is a personal project that has specifically been developed to be used with i3 and a very specific suite of software. This means that you may have to modify the script to make it work for you.
