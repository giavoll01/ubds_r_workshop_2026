library(ggplot2)

ggplot(gapminder,
       aes(x = year, y = lifeExp,
           color = country)) +
  geom_line()+
  theme(legend.position = "none")


### Save most recent ggplot 

ggsave("most_recent_gapminder_plot.pdf")

ggplot(gapminder, aes(x = year,
       y = lifeExp,
       color = country)) +
  geom_line()+
  theme(legend.position = "none")

dev.off()

pdf("plot_from_func_pdf_gapminder_2.pdf",
    width = 12,
    height = 4,
    pointsize = 12,
    family = "sans")
pdf("multi_page.pdf", width = 10, height = 6)
plot()

library(readxl)
WriteXLS::WriteXLS()
