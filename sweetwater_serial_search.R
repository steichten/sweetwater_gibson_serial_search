library(rvest)
library(XML)
library(httr)

searchspace=seq(216320001,216320600,1)
output=NULL

for(i in 1:length(searchspace)){
  VALUE=searchspace[i]
  theurl <- paste0("https://www.sweetwater.com/store/search.php?s=",VALUE,"&sb=score&loopstop=1")
  doc <- htmlParse(GET(theurl, user_agent("Mozilla")))
  
  nodeset <- getNodeSet(doc,"//main")
  sorry_result=grep('Sorry',xmlValue(nodeset[1][[1]]))
  sorry_result=c(VALUE,sorry_result)
  output=rbind.data.frame(output,sorry_result)
}

output[!grepl('^1',output[,2]),]

