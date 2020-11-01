library(tidyverse)

s <- seq(0,2,0.000001)

plot <- tibble(theta = s * pi, r = 1 - (sin(theta)^2 + cos(theta)^2)) %>%
    ggplot(aes(x = theta, xend = theta, y = 0, yend = abs(r), color = r)) +
    geom_segment(size = 0.05, show.legend = FALSE) +
    scale_color_gradient(low = '#fc0356', high = '#87a811') +
    coord_polar() +
    theme_void() +
    theme(plot.background = element_rect(fill = '#01141a')) +
    NULL


ggsave(filename = 'pitagoras_floating_point.png', height = 5000/300,width = 5000/300,dpi = 300)
