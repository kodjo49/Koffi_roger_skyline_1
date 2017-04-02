#! /bin/bash

#Nom du fichier à surveiller
NOM_FICHIER=" /etc/crontab"
# Date de la dernière modification du fichier ci-dessus
DERNIERE_MODIF=$(date -r ${NOM_FICHIER} '+%d/%m/%Y %H:%M')
# Adresse mail de l'administrateur ou de la personne à prévenir
MAIL_ADMIN="root"
# Date a laquelle le fichier à bien été modifié
DATE_MODIF="02/04/2017 10:50"
# Test si les deux dates sont identiques
if [ "${NOM_FICHIER}" != "${DATE_MODIF}" ]; then
   # Si différente, envoi du mail d'alerte
   CORPS_MESSAGE="Alerte, le fichier ${NOM_FICHIER} a été modifié le ${DERNIERE_MODIF}";
   echo "$CORPS_MESSAGE" | mail -s "Alerte surveillance modification de fichier" "${MAIL_ADMIN}";
fi
