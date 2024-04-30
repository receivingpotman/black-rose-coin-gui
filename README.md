# BlackRoseCoin_GUI

1. Clone wallet sources

git clone https://github.com/Camellia73/BlackRoseCoin_GUI.git

2. Set symbolic link to coin sources at the same level as src. For example:

ln -s ../blackrosecoin cryptonote
Alternative way is to create git submodule:

git submodule add https://github.com/Camellia73/BlackRoseCoin.git cryptonote

3. Build

mkdir build && cd build && cmake .. && make
