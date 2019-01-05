library(gapminder)
library(dplyr)

print(gapminder)

gapminder %>% filter(year == 1957)

gapminder %>% filter(country == "China", year == 2002)


gapminder %>% arrange(lifeExp)
gapminder %>% arrange(desc(lifeExp))

gapminder %>% filter(year == 1957) %>% arrange(desc(pop))

gapminder %>% mutate(lifeExp = lifeExp * 12)

gapminder %>% mutate(lifeExpMonths = lifeExp * 12)

gapminder %>% filter(year == 2007) %>% mutate(lifeExpMonths = 12 * lifeExp) %>%  arrange(desc(lifeExpMonths))


#visualize
library(ggplot2)

gapminder_1952 <- gapminder %>% filter(year == 1952)

#start point, each=country
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()
#life expect distributed
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + 
  geom_point()

#using logarithmic scale
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + 
  geom_point() + scale_x_log10()

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + 
  geom_point() + scale_x_log10() + scale_y_log10()


