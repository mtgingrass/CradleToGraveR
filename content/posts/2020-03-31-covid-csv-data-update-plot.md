---
title: Covid CSV Data Update Plot
author: mtgingrass
type: post
date: 2020-03-31T22:21:13+00:00
url: /2020/03/31/covid-csv-data-update-plot/
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
``<br />
---<br />
title: "Covid Cases in R"<br />
output: html_notebook<br />
---</p>
<p># Covid Data Import</p>
<p>This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases<br />
6666<br />
```{r include = FALSE}<br />
# library(httr)<br />
# library(readxl)<br />
# library(RCurl)<br />
#<br />
# # http://memosisland.blogspot.com/2012/03/check-url-existance-with-r.html<br />
# urlExists <- function(address) {  
#      tryCatch ({  
#       con <- url(address)  
#       a  <- capture.output(suppressWarnings(readLines(con)))  
#       close(con)  
#       TRUE;  
#      },
#        error = function(err) {  
#        occur <- grep("cannot open the connection", capture.output(err));  
#        if(length(occur) > 0) FALSE;<br />
#       })<br />
# }<br />
#<br />
# url1 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xlsx")<br />
#<br />
# url2 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xls")<br />
#<br />
# if (urlExists(url1))<br />
# {<br />
#   cat("xlsx file exists")<br />
#   GET(url1, write_disk(tf <- tempfile(fileext = ".xlsx")))
#   df = read_xlsx(tf)
# }
# 
# if (urlExists(url2))
# {
#   cat("xls file exists")
#   GET(url2, write_disk(tf <- tempfile(fileext = ".xls")))
#   df = read_excel(tf)
# }

#these libraries need to be loaded
library(utils)
library(httr)

#download the dataset from the ECDC website to a local temporary file
GET("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv", authenticate(":", ":", type="ntlm"), write_disk(tf <- tempfile(fileext = ".csv")))

#read the Dataset sheet into “R”. The dataset will be called "data".
df <- read.csv(tf)
```

# Covid Explore

```{r}
covid_death_total <- sum(df$deaths)
```

There have been `r covid_death_total` deaths since `r Sys.Date()`.

The features we have are: `r names(df)`.


```{r}
library(dplyr)
library(DT)

edf <- df %>% group_by(countriesAndTerritories) %>% mutate(deathRate = sum(deaths)/sum(cases))</p>
<p>datatable(<br />
  edf, extensions = 'Buttons', options = list(<br />
    dom = 'Bfrtip',<br />
    buttons = c('copy', 'csv', 'excel', 'pdf', 'print')<br />
  )<br />
)<br />
```</p>
<p># Our First Graph</p>
<p>```{r}<br />
library(ggplot2)</p>
<p>edf %>% filter(deaths > 100) %>%<br />
  group_by(countriesAndTerritories) %>%<br />
  summarise(Cases_Total = sum(cases), Deaths_Total = max(deaths)) %>%<br />
  ggplot(aes(countriesAndTerritories)) +<br />
  #geom_point(aes(y = Cases_Total, color = "yellow")) +<br />
  geom_point(aes(y = Deaths_Total, color = "red")) +<br />
  coord_flip()<br />
```</p>
<p>``