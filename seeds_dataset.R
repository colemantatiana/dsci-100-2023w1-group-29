set.seed(29)
seeds <- read_delim("seeds_dataset.txt", col_names = FALSE)
colnames(seeds) <- c("area", "perimeter", "compactness", 
                     "kernel_length", "kernel_width", "asymmetry_coefficient", 
                     "kernel_groove", "type")
seeds$kernel_groove[8] <- 5
seeds$type[8] <- 1
seeds$compactness[36] <- seeds$kernel_length[36]
seeds$kernel_length[36] <- seeds$asymmetry_coefficient[36]
seeds$kernel_width[36] <- seeds$kernel_groove[36]
seeds$asymmetry_coefficient[36] <- 2.27
seeds$kernel_groove[36] <- 5.443
seeds$type[36] <- 1
seeds$kernel_groove[61] <- 4.607
seeds$type[61] <- 1
seeds$kernel_groove[136] <- 5.439
seeds$type[136] <- 2
seeds$kernel_groove[202] <- 4.745
seeds$type[202] <- 3
colnames(seeds)

seeds$compactness[171] <- 0.8189
seeds$kernel_length[171] <- 5.325
seeds$kernel_width[171] <- 2.7010
seeds$asymmetry_coefficient[171] <- 6.735
seeds$kernel_groove[171] <- 5.163
seeds$type[171] <- 3

seeds$compactness[170] <- 0.8359
seeds$kernel_length[170] <- 5.090
seeds$kernel_width[170] <- 2.7150

seeds$asymmetry_coefficient[170] <- 3.521
seeds$kernel_groove[170] <- 5.088
seeds$type[170] <- 3

seeds$type[seeds$type == '\t1'] <- 1
seeds$type[seeds$type == '\t2'] <- 2
seeds$type[seeds$type == '\t3'] <- 3
seeds$type[seeds$type == '1'] <- "Kama"
seeds$type[seeds$type == '2'] <- "Rosa"
seeds$type[seeds$type == '3'] <- "Canadian"
unique(seeds$type)

seeds_plot <- seeds |>
  ggplot(aes(x= perimeter, 
             y= asymmetry_coefficient, 
             colour = type)) +
  geom_point()

seeds_plot


