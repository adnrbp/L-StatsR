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




