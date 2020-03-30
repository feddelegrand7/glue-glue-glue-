#######################################################

"{glue} {glue} {glue}" 

"By {Mohamed El Fodil Ihaddaden}"

"For {R-Ladies Algiers}"

"{2020/03/30}"

######################################################


library(glue)

# 1- Formatting Text ------------------------------------------------------

text <- "

Bonjour, je m'appelle Ihaddaden, 

je suis Algérien, 

je vis à Alger, 

Nous sommes confinés depuis presque 15 jours

"

glue(text)



# Glueing a Character -----------------------------------------------------

text_glue <- as_glue(text)


# Combining characters with glue -----------------------------------------------------


SOS <- "

Ceci est un SOS 

"

glue(text, SOS)


glue(SOS,
  "",
  "-------------------------------", 
  text, 
  "--------------------------------", 
  SOS)



# Dynamic glue -----------------------------------------------------

nom          <-  "Fodil"
nationalité  <-  "Algérien"
ville        <- "Alger"
jours_conf   <-   15



glue("Bonjour, je m'appelle {nom}, 
  je suis {nationalité}, 
  je vis à {ville},
  nous somme confinés depuis {jours_conf}")





# Dynamic glue advanced -----------------------------------------------------


nom <- c('Fodil', 'Omar', 'Nabil', 'Lamia', 'Lamine', 'Nadia', 'Yasmine', 'Rahim')

age <- round(rnorm(8, mean = 20, sd = 2))


glue("Bonjour, je m'appelle {nom}, j'ai {age} ans et j'ai besoin d'aide")




# Dynamic glue more advanced -----------------------------------------------------

quant <- 200
prix_unit <- 2 



glue("Bonjour votre facture au {Sys.Date()} est de:
  
  {quant * prix_unit} DA.
  
  Je vous prierais de procéder au paiement de cette somme
  avant le {Sys.Date() + 7}
  
  
  ")




# Dynamic glue more more advanced -----------------------------------------------------

library(tidyverse)
library(glue)

names(starwars)

starwars %>%  mutate(
  
  Description = glue("{name} is a {skin_color} {gender} born in {homeworld} in {birth_year}.", .na = "...")
  
  
) %>% select(Description)





# BONUS !!! Coloring your glue -------------------------------------------------------------------------



library(crayon)


glue_col("{red {SOS}}", 
  "-----------------------------------", 
  "{blue {text}}", 
  "-----------------------------------",
  "{red {SOS}}")



usethis::edit_r_environ(
)


