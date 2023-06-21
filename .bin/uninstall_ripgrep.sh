
#!/bin/bash

# Đường dẫn cần xoá
path_to_remove="~/.bin/rg"

# Xử lý .bashrc
if [ -f ~/.bashrc ]
then
  read -p "Bạn có muốn xoá PATH khỏi .bashrc không? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    grep -v "$path_to_remove" ~/.bashrc > ~/.bashrc.temp && mv ~/.bashrc.temp ~/.bashrc
    echo ".bashrc đã được cập nhật."
  fi
fi

# Xử lý .zshrc
if [ -f ~/.zshrc ]
then
  read -p "Bạn có muốn xoá PATH khỏi .zshrc không? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    grep -v "$path_to_remove" ~/.zshrc > ~/.zshrc.temp && mv ~/.zshrc.temp ~/.zshrc
    echo ".zshrc đã được cập nhật."
  fi
fi

# Xử lý config.fish
if [ -f ~/.config/fish/config.fish ]
then
  read -p "Bạn có muốn xoá PATH khỏi config.fish không? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    grep -v "$path_to_remove" ~/.config/fish/config.fish > ~/.config/fish/config.fish.temp && mv ~/.config/fish/config.fish.temp ~/.config/fish/config.fish
    echo "config.fish đã được cập nhật."
  fi
fi

rm -r ~/.bin/rg
