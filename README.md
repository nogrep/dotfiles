# Requirement
1. Install Git

```console
https://git-scm.com/download/
```
2. Install Terminal

```console
https://github.com/microsoft/terminal
```
3. Install shell

Bash (pre-installed with Git Bash)
```console
C:\Program Files\Git\usr\bin\bash.exe
```
Zsh
```console
https://www.zsh.org/
```

Fish (use pacman inside git-sdk)
```console
https://fishshell.com/
pacman -S fish
```

Powershell 7 
```console
https://github.com/PowerShell/PowerShell
```

4. Install packages add to path

Replace find
```console
https://github.com/sharkdp/fd
```

Grep powerhouse
```console
https://github.com/BurntSushi/ripgrep
```

A lot of essential package, compiler
```console
https://github.com/git-for-windows/git-sdk-64
```

Python, pip
```console
https://www.python.org/

```
Fuzzy Finder (fzf)
```console
https://github.com/junegunn/fzf
```

5. Cheatsheet for bash

Ctrl + A : Move to the start of the line.
Ctrl + E : Move to the end of the line.
Alt  + B : Move back one word.
Alt  + F : Move forward a word.

Ctrl + U : Delete from the cursor to the start of the line.
Ctrl + K : Delete from the cursor to the end of the line.
Ctrl + W : Delete the word before the cursor.

Ctrl + L : Clear the terminal screen.
Ctrl + C : Stop the current process/command.
Ctrl + D : Log out or exit the terminal.
Ctrl + Z : Pause the current process (can be resumed).
Ctrl + R : Search command history (backward search).

!!	: Repeat the last command.
!n	: Repeat the nth command from history.

Tab twice	List all possible completions.
Ctrl + Shift + C : Copy the selected text or command.
Ctrl + Shift + V	: Paste copied text or command.
Ctrl + Shift + N : Open a new terminal window.
Ctrl + Shift + T  : Open a new tab in the terminal.
Ctrl + Tab / Ctrl + PageDown : Switch between terminal tabs.

6. Cheatsheet for SSH

Neu service stop thi chay duoi day trong powershell
Get-Service ssh-agent : kiem tra dict vu co dang chay khong
Get-Service ssh-agent | Select StartType : kiem tra dich  vu co bi disable khong
Get-Service -Name ssh-agent | Set-Service -StartupType Manual : chay bang quyen admin de start

eval `ssh-agent -s` : start ssh agent
ssh-add ~/.ssh/(key su dung): add key ssh vao agent
ssh-add -L    : check cac key ssh dang duoc ssh agent su dung
echo $SSH_AUTH_SOCK

ssh -T git@work.github.com
ssh -T git@personal.github.com
