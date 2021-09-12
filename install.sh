#!/bin/bash 

#Variable qui définit le script a prendre en compte
script='noteReseau.sh'

#On retire l'extension de la varible script
alias=$(echo $script | cut -f 1 -d .)

#Copie du script dans le home
cp ${script} $HOME/.${script}

if [  $(grep -q "alias ${alias}=" $HOME/.bashrc) ];then
   #Si l'alias n'est pas present on le construit
   #Puis l'alias est ajoute dans le bashrc
   echo -e "alias ${alias}='~/.${script}'" >> $HOME/.bashrc
fi

echo "Fini vous avez plus qu'à tapper note dans un terminal ^^ "
