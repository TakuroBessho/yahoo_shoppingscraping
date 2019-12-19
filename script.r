 library(rvest)
 x <- list()
for (i in seq(1, 2781, 20)){ 
  url<-paste(endpoint, i, sep = "")
  yahoo <- read_html(url, 'utf-8')
  x<-append(x, list(yahoo))
  Sys.sleep(10)
  }
 
word<-html_nodes(sample[[1]], "h3")
names<-html_nodes(word, "span") %>%html_text()
