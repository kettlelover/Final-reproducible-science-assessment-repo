#Simple cleaning function:
cleaning <- function(penguins_raw){
  penguins_raw %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-comments)
}

#Function to subset the clean data and remove NAs 
remove_NA <- function(penguins_clean){
  penguins_clean %>%
    filter(!is.na(body_mass_g), !is.na(culmen_length_mm)) %>%
    select(species, body_mass_g, culmen_length_mm)
}