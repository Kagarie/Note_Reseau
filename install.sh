#!/bin/bash 

#Variable qui définit le script a prendre en compte
script='noteReseau.sh'

#On retire l'extension de la varible script
alias=$(echo $script | cut -f 1 -d .)

#Copie du script dans le home
cp ${script} $HOME/.${script}

grep -q "alias ${alias}=" $HOME/.bashrc
retval=$?

if [  "${retval}" != 0  ];then
   #Si l'alias n'est pas present on le construit
   #Puis l'alias est ajoute dans le bashrc
   echo -e "alias ${alias}='~/.${script}'" >> $HOME/.bashrc
fi


if [ -f "${HOME}/.zshrc" ]; then

   grep -q "alias ${alias}=" $HOME/.zshrc
   retval=$?

   if [  "${retval}" != 0 ];then
      #Si l'alias n'est pas present on le construit
      #Puis l'alias est ajoute dans le bashrc
      echo -e "alias ${alias}='~/.${script}'" >> $HOME/.zshrc
   fi

fi

echo "Fini vous avez plus qu'à tapper noteReseau dans un nouveau terminal !"
