#load packages from the "package-loading.R script
source(here::here("R/package-loading.R"))

glimpse(NHANES)

NHANES <-NHANES
view(NHANES)
# Load the packages
library(tidyverse)
library(NHANES)

# Check column names
colnames(NHANES)

# Look at contents
str(NHANES)
glimpse(NHANES)

# See summary
summary(NHANES)

# Look over the dataset documentation
?NHANES

usethis::use_r("exercises-wrangling")

#use the pipe operator
#these 2 are the same
colnames(NHANES)

NHANES %>% colnames()

#standard R way of "chaining" functions together
glimpse(head(NHANES))

NHANES %>%
  head() %>%
  glimpse()


# #mutate() function ------------------------------------------------------

#modify an existing variable or create a new variable
NHANES_changed <- NHANES %>%
    mutate (Height_meters = Height/100)

#create a new varible based on condition
NHANES_changed <- NHANES_changed %>%
  mutate(HighlyActive = if_else(PhysActiveDays >= 5, "yes", "no"))

#create of replace multiple variable by using ","
NHANES_changes <- NHANES_changed %>%
  mutate(new_column = "only one variable",
            height = Height/100)


# group_by(), summarise(); Create a summary pf the data, alone or ---------

#summarise() by itself
NHANES %>%
  summarise(MaxAge = max(Age, na.rm = TRUE), MeanBMI = mean(BMI, na.rm = TRUE))
