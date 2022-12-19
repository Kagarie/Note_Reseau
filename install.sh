#!/bin/bash

script='noteReseau.sh'

alias=$(echo $script | cut -f 1 -d .)

cp ${script} $HOME/.${script}

grep -q "alias ${alias}=" $HOME/.bashrc
retval=$?

if [ "${retval}" != 0 ]; then
   echo -e "alias ${alias}='~/.${script}'" >>$HOME/.bashrc
fi

if [ -f "${HOME}/.zshrc" ]; then

   grep -q "alias ${alias}=" $HOME/.zshrc
   retval=$?

   if [ "${retval}" != 0 ]; then

      echo -e "alias ${alias}='~/.${script}'" >>$HOME/.zshrc
   fi

fi

echo "Fini vous avez plus qu'à tapper noteReseau dans un nouveau terminal !"
