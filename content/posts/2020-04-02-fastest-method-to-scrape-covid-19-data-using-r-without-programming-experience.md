---
title: Fastest Method to Scrape COVID 19 Data using R without Programming Experience
author: mtgingrass
type: post
date: 2020-04-02T22:48:36+00:00
url: /2020/04/02/fastest-method-to-scrape-covid-19-data-using-r-without-programming-experience/
classic-editor-remember:
  - classic-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - Programming
  - R

---
`<br />
---<br />
title: "My first covid analysis"<br />
output: html_notebook<br />
---</p>
<p># Check out my COVID Analyis</p>
<p>This is the approach I used. I got the data from this source: [ECDCP](https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide)</p>
<p># Import Data</p>
<p>This is where we import data. </p>
<p>```{r}<br />
#these libraries need to be loaded<br />
library(utils)<br />
library(httr)</p>
<p>static_url <- "http://markgingrass.com/wp-content/uploads/2020/04/covid_data.csv"
ecdc_url <- "https://opendata.ecdc.europa.eu/covid19/casedistribution/csv"
#download the dataset from the ECDC website to a local temporary file
GET(ecdc_url, authenticate(":", ":", type="ntlm"), write_disk(tf <- tempfile(fileext = ".csv")))

#read the Dataset sheet into “R”. The dataset will be called "data".
data <- read.csv(tf)
```

# Show Data Table

```{r}
library(dplyr)
library(DT)

edf <- data %>% group_by(countriesAndTerritories) %>%<br />
  mutate(deathRate = sum(deaths)/sum(cases))</p>
<p>datatable(edf, extensions = 'Buttons', options = list(<br />
  dom = 'Bfrtip',<br />
  buttons = c('copy', 'csv', 'excel', 'pdf', 'print')<br />
))</p>
<p>```</p>
<p># Graph 1 {.tabset}</p>
<p>## Graph 1a<br />
```{r}<br />
library(ggplot2)</p>
<p>edf %>% filter(deaths > 100) %>%<br />
  group_by(countriesAndTerritories) %>%<br />
  summarise(Cases_Total = sum(cases), Deaths_Total = sum(deaths)) %>%<br />
  ggplot(aes(x = countriesAndTerritories)) +<br />
  geom_point(aes(y = Deaths_Total, color = "red")) +<br />
  coord_flip()<br />
```</p>
<p>## Graph 1b</p>
<p>```{r}<br />
edf %>% filter(deaths > 100) %>%<br />
  group_by(countriesAndTerritories) %>%<br />
  summarise(Cases_Total = sum(cases), Deaths_Total = sum(deaths)) %>%<br />
  ggplot(aes(x = countriesAndTerritories)) +<br />
  geom_point(aes(y = Cases_Total)) +<br />
  coord_flip()<br />
```</p>
<p>`