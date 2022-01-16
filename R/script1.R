library(tidyverse)

#Função usada para obter uma relação entre número de temporadas por série na Netflix
#'@export
contar_series <- function(){
  netflix_titles %>% filter(type == "TV Show") %>%
    filter(duration == "1 Season" | duration == "2 Seasons" |
             duration == "3 Seasons" | duration ==  "4 Seasons" |
             duration == "5 Seasons" | duration == "6 Seasons"  |
             duration == "7 Seasons" | duration =="8 Seasons") %>%
    ggplot(aes(duration,..count..)) +
    geom_bar(fill = "#6C969D") +
    labs(title = 'Duração de séries',
         x = 'Número de temporadas',
         y = 'Total de séries')
}

