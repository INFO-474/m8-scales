# Format data downloaded from:
# http://www.healthdata.org/us-health/data-download (more info in Readme.md)

library(dplyr)
library(tidyr)
setwd('~/Documents/INFO-474/m8-d3-scales/exercise-3')

# Any drinking dataset
any_drinking <- read.csv("data/any_drinking.csv", stringsAsFactors = FALSE) %>% 
                    filter(location == state) %>% 
                    select(state_name = state, contains('males_2012')) %>% 
                    gather(sex, percent, females_2012:males_2012) %>% 
                    mutate(sex = as.character(sex), type="any")
# Binge drinking dataset
binge_drinking <- read.csv("data/binge_drinking.csv", stringsAsFactors = FALSE) %>% 
                    filter(location == state) %>% 
                    select(state_name = state, contains('males_2012')) %>% 
                    gather(sex, percent, females_2012:males_2012) %>% 
                    mutate(sex = as.character(sex), type="binge")

# State abbreviations
states <- read.csv('data/states.csv', stringsAsFactors = FALSE) 

# Combine data
data <- rbind(any_drinking, binge_drinking) %>% 
        left_join(states, by='state_name') %>% 
        select(state_name, state, sex, type, percent)

# Remove s_2012 from sex
data$sex <- substr(data$sex,1,nchar(data$sex)-6)

# Write data
write.csv(data, 'data/prepped_data.csv', row.names = FALSE)
