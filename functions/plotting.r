#Function for plotting the linear regression
plot_linear_regression <- function(mass_and_culmen){
  mass_and_culmen %>% 
    ggplot(data = mass_and_culmen, mapping = aes(x = body_mass_g, y = culmen_length_mm)) + geom_point(mapping = aes(colour = species), alpha = 0.5) + geom_smooth(formula = y ~ x, method = "lm", colour = "black") + labs(x = "Body mass (g)", y = "Culmen length (mm)", colour = "Species", title = "Variation in  culmen length as a function of body mass in penguins") + theme_bw() + scale_colour_manual(values = c("darkorange","purple","cyan4"))
}

#Function for saving the figure as an svg file

save_regression_plot <- function(mass_and_culmen, filename, width, height, scaling){
  svglite(filename, width = width, height = height, scaling = scaling)
  my_plot1 <- plot_linear_regression(mass_and_culmen)
  print(my_plot1)
  dev.off()
}
