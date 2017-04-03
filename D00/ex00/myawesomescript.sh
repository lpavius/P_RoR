#!/bin/sh

curl -Is $1 | grep 42 | cut -d ' ' -f2 | cut -c-12

#curl -I ou --head affiche que l'en-tête (HTTP) du doc
#curl -s ou --silence n'affiche pas la progression, les messages d'erreur, ..

#cut cut -d ' ' -f2 va extraire le 2e champ, le ' ' fixant le séparateur de champ
# cut -c-12 va extraire les 12 premiers caractères de la ligne