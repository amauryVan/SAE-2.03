# Instructions d'utilisation

### Convertir le fichier MarkDown en fichier HTML 

Afin de convertir le fichier Markdown nous utiliserons ici l'outil Pandoc, veillez donc à ce qu'il soit bien installé sur votre machine.  
Pour l'installer, veuillez suivre les instructions sur le [Site officiel Pandoc](https://pandoc.org/installing.html).

Tout d'abord, placez-vous dans le répertoire contenant le fichier Markdown, puis exécutez le script convertHTML ou saisissez la commande suivante dans votre terminal :  
    `pandoc Rendu.md --toc --number-sections -o Rendu.html -s` 

### Utilisation des scripts

Plusieurs scripts sont fournis afin de faciliter la conversion de vos fichiers.
Il peut être utile d'utiliser la commande `chmod a+x *.sh` afin de les rendre exécutables.
Pour exécuter un script, il faut ajouter un **"./"** avant le nom de celui ci, par exemple : `./monScript`

#### Téléchargement des templates
 
Afin d'obtenir un visuel plus agréable, des templates ont été utilisés sur la version déjà générée, vous pouvez les télécharger automatiquement en exécutant le script download_templates ou en saisissant manuellement la commande.  
    `curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/copy_templates.sh' | bash`  

Si vous souhaitez utiliser le template du fichier fourni, saisissez la commande suivante après l'avoir installé :  
`pandoc Rendu.md --toc --number-sections -o Rendu.html -s --template=clean_menu.html`

### Explication des options 

L'option **`-o`** indique le fichier qui va être généré, l'option **`--toc`** indique que nous souhaitons un sommaire, le **`-s`** permet de créer un fichier standalone, avec un entête et un pied-de-page, tandis que l'option **`--template`** indique le template utilisé pour le fichier HTML.


### Convertir le fichier MarkDown en fichier PDF

Pour la conversion du fichier en PDF, même procédé que pour le HTML, il suffit d'exécuter le script convertPDF.  
Ou bien de saisir la commande :  
    `pandoc -s --toc -o test.pdf Rendu.md`

La version fournie avec l'archive a été réalisée avec un template, nommé Eisvogel.
Pour télécharger ce template, suivez les instructions sur le [GitHub](https://github.com/Wandmalfarbe/pandoc-latex-template)
Pour générer un fichier PDF avec ce template, utilisez la commande suivante :  
    `pandoc -s Rendu.md annexes.md -o RenduWithTemplate.pdf --template eisvogel --listings --toc --toc-depth=2`

