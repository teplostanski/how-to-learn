#!/bin/bash
echo 'Название коммита'
git add .
read comment
git commit -m '$comment'


while true; do
    read -p "Пушим? [Y/n]" yn
    case $yn in
        ^M ) git push; break;;
        [Nn]* ) exit;;
        #* ) git push; break;;
    esac
done