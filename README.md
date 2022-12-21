# FAS1002 Projet final d'Alice Gaudreau

Ce répertoire est le rapport fonctionnel remis pour le projet final du cours [FAS1002 - Initiation à la programmation en sciences sociales](https://admission.umontreal.ca/cours-et-horaires/cours/fas-1002/) qui est offert dans le cadre du [Microprogramme de 1er cycle en analyse des mégadonnées en sciences humaines et sociales](https://admission.umontreal.ca/programmes/microprogramme-de-1er-cycle-en-analyse-des-megadonnees-en-sciences-humaines-et-sociales/structure-du-programme/).

## Présentation du rapport

Ce rapport utilise les données de Gapminder sur l'espérance de vie et celles de Our World In Data sur la consommation d'énergie dans le monde. Il présente des facteurs ayant une influence sur l'espérance de vie et propose une analyse de la consommation d'énergie dans le temps et selon le type d'énergie.

Sources de données:

1.  Gapminder est un organisme à but non lucratif indépendant qui offre ses données en libre accès afin de lutter contre la désinformation.

2.  Our World With Data est une organisation affiliée à l'Université d'Oxford qui offre également ses données en libre accès afin de contribuer à des enjeux de société mondiaux.

    ## Structure du répertoire

``` bash
├── 404.qmd
├── a-propos.qmd
├── assets
│   ├── FAS1002-A22_travail-final_v1.pdf
│   ├── img
│   │   └── FAS1002.png
│   └── scss
│       ├── styles.css
│       └── styles-dark.scss
├── data
│   ├── processed
│       ├── full_database_combined.csv
│   └── raw
│       ├── 2022-12-21_energy-data.csv
│       ├── continents.csv
│       ├── GM-LifeExpectancy-countries-by-year.csv
│       ├── merged_data.csv
├── exploration.qmd
├── FAS1002_projet-final.Rproj
├── figures
│   ├── G2a_Energy_Share_Canada.png
│   ├── G2b_Energy_Share_USA.png
│   ├── G2c_Energy_Share_Chine.png
│   ├── G2d_Energy_Share_Inde.png
│   ├── G2e_Energy_Share_Norvege.png
├── _freeze
│   └── ...
│      └── contenu des computations
├── import.qmd
├── index.qmd
├── intro.qmd
├── LICENSE
├── _quarto.yml
├── R
├── README.md
└── references.bib

33 directories, 46 files
```

## Comment utiliser ce répertoire

1.  Vous pouvez consulter le rapport final ici.

2.  Les pages .qmd contiennent le code des différents onglets du rapport:

    1.  La page *index* est la page d'accueil et elle comprend les analyses principales.

    2.  La page *import* agit en soutien en donnant les manipulations relatives au téléchargement des données et à l'exportation des données manipulées

    3.  La page *exploration* comprend le codes pour les ébauches d'analyse descriptives et de variables. Elle ne contient pas d'analyses à proprement parler.

    4.  La page *introduction* est une introduction (et cette phrase est un pléonasme).

3.  Le dossier *data* comprend les données telles que téléchargées (*raw*) et après manipulations (*processed*).

4.  Le dossier figures comprend les différentes versions du Graphique 2 sur le type d'énergie dont est issue l'électricité dans certains pays.

## Licence

Cette œuvre est mise à disposition selon les termes de la [licence Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/deed.fr).

[![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/deed.fr)
