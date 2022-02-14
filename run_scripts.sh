#! /bin/bash
source scripts/generate_website.sh

DIR=html
rm -rf $DIR/* 2> /dev/null
mkdir -p $DIR
cp -r resources/images resources/styles.css $DIR/

POKEMON_DATA="resources/data/pokemon.csv"
POKEMON_TEMPLATE="resources/templates/pokemon_template.html"
CARD_TEMPLATE="resources/templates/card_template.html"
generate_website ${POKEMON_DATA} "$DIR" ${POKEMON_TEMPLATE} ${CARD_TEMPLATE}

open $DIR/all.html