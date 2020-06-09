# Comment UPLOAD ses solutions


## Méthode 1 (Facile) :

Directement depuis le site avec le button : "Upload files"

## Méthode 2 (- Facile mais rapide):

```bash

cd <PATH>

git init 

git add <NameOfTheFile>

git status 

git commit -m "TITRE"

git remote  add origin https://github.com/MPsi-INFO-MASSENA/<REPO>.git

git push -u origin master 

```

<PATH> : votre Dossier où se situe les fichiers à commit

<NameOfTheFile> : Nom des fichiers à commit (mettre un . pour tous commit dans <PATH>)

<REPO>: Le répositorie où vous voulez commit votre code
