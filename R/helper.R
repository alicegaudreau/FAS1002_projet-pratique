#installer cron
library(lubridate)

# Télécharger les données
telecharger_donnees <- function() {
    #Data Energy
    
    #Étape 1 - Nommer des objets
    URL_Energy <- "https://github.com/owid/energy-data/raw/11fb69e2c83c73d1e964075d711a03fef6262e9a/owid-energy-data.csv"
    base_path <- file.path("data", "raw")
    tout_dans_base_path <- file.path("data", "raw", "*")
    fichier_Energy_du_jour <- paste(today(), "energy-data.csv", sep = "_") #creer le nom de fichier quon veut avec lubridate
    fpath_Energy <- file.path(base_path, fichier_Energy_du_jour) #creer le path
    
    #Étape 2 
        
        if (!file.exists(fpath_Energy)) { #Si le fichier du jour n'existe pas
            file.remove((paste(base_path, dir(path = base_path, pattern = "*_energy-data.csv"), sep = "/")))    #vide le dossier
            download.file(url = URL_Energy, destfile = fpath_Energy) #remplis le dossier avec les données du jour
        } 
    
    Energie <- read.csv(file = fpath_Energy)
 }
    

#lister_fichiers <- liste.files(base_path)
#if (is.na(match(fichier_Energy_du_jour, lister_fichiers))) {
#Si le fichier du jour n'existe pas, download le 

#Energie <- read.csv(file = URL_Energy)
    

telecharger_donnees()

# cmd <- cron_rscript()
# cron_add(command = cmd, frequency = 'minutely', id = 'test1', description = 'My process 1') # # Programmer à chaque mois


