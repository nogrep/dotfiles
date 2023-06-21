#!/bin/bash
# Lấy JSON từ API release của GitHub
repo="BurntSushi/ripgrep" 
release_info=$(curl -s https://api.github.com/repos/$repo/releases/latest)

# Tìm tệp có tên bao gồm cả "windows-msvc" và "x86_64"
download_url=$(echo "$release_info" | grep "browser_download_url" | grep "windows-msvc" | grep "x86_64" | cut -d '"' -f 4)

# Nếu vẫn không tìm thấy tệp nào phù hợp, tìm tệp có tên "x86_64"
if [ -z "$download_url" ]
then
  download_url=$(echo "$release_info" | grep "browser_download_url" | grep "x86_64" | cut -d '"' -f 4)
fi

# Nếu không tìm thấy tệp nào phù hợp, tìm tệp có tên "windows-msvc"
if [ -z "$download_url" ]
then
  download_url=$(echo "$release_info" | grep "browser_download_url" | grep "windows-msvc" | cut -d '"' -f 4)
fi

# Nếu vẫn không tìm thấy tệp nào phù hợp, in ra thông báo lỗi
if [ -z "$download_url" ]
then
  echo "$repo not found"
  exit 1
else
  echo $download_url
  read -p "Continue to install following above link [y/N]"  response
  if [[ "$response" =~ ^([nN][oO]|[nN])$ ]]
  then
    exit 0
  fi
fi

# Tải xuống tệp
curl -LO $download_url

# Tên tệp
file_name=$(ls | grep "ripgrep")

# Giải nén tệp
unzip $file_name -d ~/.bin/

# Xóa tệp zip
rm $file_name
binpath="~/.bin/rg"
rm -rf ~/.bin/rg
# Đổi tên thư mục
mv ~/.bin/ripgrep-* ~/.bin/rg

if [ -f ~/.bashrc ]
then
  read -p "Add to bashrc? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    echo 'export PATH=$PATH:~/.bin/rg' >> ~/.bashrc
    echo $binpath' has been added to bashrc'
  fi
fi

if [ -f ~/.zshrc ]
then
  read -p "Add to zshrc? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    echo 'export PATH=$PATH:~/.bin/rg' >> ~/.zshrc
    echo $binpath' has been added to zshrc'
  fi
fi

if [ -f ~/.config/fish/config.fish ]
then
  read -p "Add to config.fish ? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    echo 'set PATH $PATH ~/.bin/rg' >> ~/.config/fish/config.fish
    echo $binpath' has been added to config.fish'
  fi
fi
