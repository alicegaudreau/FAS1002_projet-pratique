#installer cron
install.packages("cronR")
library(cronR)
library(lubridate)
library(fs)
library(tidyverse)
library(skimr)
library(purrr)

# Télécharger les données
telecharger_donnees <- function() {
    #Data Energy
    URL_Energy <- "https://github.com/owid/energy-data/raw/11fb69e2c83c73d1e964075d711a03fef6262e9a/owid-energy-data.csv"
    
    base_path <- file.path("data", "raw")
    fname_Energy <- paste(today(), "energy-data.csv", sep = "_")
    #creer le nom de fichier quon veut avec lubridate
    
    fpath_Energy <- file.path(base_path, fname_Energy) #path combined
    
    download.file(url = URL_Energy, destfile = fpath_Energy) 
    
    #faire un paste avec le file path avec la date d'incluse
    #Still : 
    Energie <- read.csv(file = 'data/raw/2022-12-06_energy-data.csv')
}

telecharger_donnees()


# telecharger_donnees <- function() {
#     cat("Salut Sam") 
#     
#     URL_Energy <- "https://github.com/owid/energy-data/raw/11fb69e2c83c73d1e964075d711a03fef6262e9a/owid-energy-data.csv"
#     
#     base_path <- file.path("data", "raw")
#     fname_Energy <- paste(today(), "energy-data.csv", sep = "_")
#     #creer le nom de fichier quon veut avec lubridate
#     
#     fpath_Energy <- file.path(base_path, fname_Energy) #path combined
#     
#     download.file(url = URL_Energy, destfile = fpath_Energy) 
#     
#     cat("Bye Sam")
# }
# 
# telecharger_donnees()

# Supprimer les anciennes données

# Renommer les données avec la date d'aujourd'hui

# Programmer à chaque jour 
# salut_alice <- function() {
#     cat("Salut Alice")
# }
# 
# cmd <- cron_rscript()
# 
# # Programmer à chaque mois
# cron_add(command = cmd, frequency = 'minutely', id = 'test1', description = 'My process 1')


