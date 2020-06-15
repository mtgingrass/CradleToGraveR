---
title: Does COVID-19 (coronavirus) URL File Exists using R – European Center for Disease Control
author: mtgingrass
type: post
date: 2020-03-19T02:13:10+00:00
url: /2020/03/19/does-covid-19-coronavirus-url-file-exists-using-r-european-center-for-disease-control/
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
<p>This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases</p>
<p>```{r include = FALSE}<br />
library(httr)<br />
library(readxl)<br />
library(RCurl)</p>
<p># http://memosisland.blogspot.com/2012/03/check-url-existance-with-r.html<br />
urlExists <- function(address) {  
     tryCatch ({  
      con <- url(address)  
      a  <- capture.output(suppressWarnings(readLines(con)))  
      close(con)  
      TRUE;  
     },
       error = function(err) {  
       occur <- grep("cannot open the connection", capture.output(err));  
       if(length(occur) > 0) FALSE;<br />
      })<br />
}  </p>
<p>url1 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xlsx")</p>
<p>url2 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xls")</p>
<p>if (urlExists(url1))<br />
{<br />
  cat("xlsx file exists")<br />
  GET(url1, write_disk(tf <- tempfile(fileext = ".xlsx")))
  df = read_xlsx(tf)
}

if (urlExists(url2))
{
  cat("xls file exists")
  GET(url2, write_disk(tf <- tempfile(fileext = ".xls")))
  df = read_excel(tf)
}

```

# Covid Explore

```{r}
covid_death_total <- sum(df$Deaths)
```

There have been `r covid_death_total` deaths since `r Sys.Date()`.

The features we have are: `r names(df)`.


```{r}
library(dplyr)
library(kableExtra)

edf <- df %>% group_by(`Countries and territories`) %>% mutate(deathRate = sum(Deaths)/sum(Cases))</p>
<p>redf <- edf %>% head(100)<br />
kable(redf) %>%<br />
  kable_styling(bootstrap_options = "striped", full_width = F)<br />
```</p>
<p># Our First Graph</p>
<p>```{r}<br />
library(ggplot2)</p>
<p>edf %>% filter(Deaths > 0) %>%<br />
  group_by(`Countries and territories`) %>%<br />
  summarise(Cases_Total = sum(Cases), Deaths_Total = sum(Deaths)) %>%<br />
  ggplot(aes(`Countries and territories`)) +<br />
  geom_point(aes(y = Cases_Total, color = "yellow")) +<br />
  geom_point(aes(y = Deaths_Total, color = "red")) +<br />
  coord_flip()<br />
```</p>
<p>``