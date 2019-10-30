# Data sources

## mtcars.txt

This was dumped to text from R 3.5.2 on Oct 28, 2019 using the following command:

```{r}
data(mtcars)
write.table(mtcars, file = "mtcars.txt", sep = "\t",
            row.names = TRUE, col.names = NA)
```

## tajimasd.txt.gz

This file is a subset of data from Thornton (2019).

The file was created from a larger set of sqlite3 databases using the following script:

```{r}
library(dplyr)                                                                                                                                                                                                                                           
process_genome_scan <- function(filename)                                                                                                                                                                                        
{                                                                                                                                                                                                                                
    fs <- str_split(filename,regex('\\.'))[[1]]                                                                                                                                                                                  
    fs[2]<-str_replace(fs[2],'mu','')                                                                                                                                                                                            
    fs[4]<-str_replace(fs[4],'opt','')                                                                                                                                                                                                                  
    mu <- as.numeric(paste(fs[2],fs[3],sep='.'))                                                                                                                                                                                                        
    opt <- as.numeric(paste(fs[4],fs[5],sep='.'))                                                                                                                                                                                                       

    dbname = paste("../../mlocus_pickle/",filename,sep="")                                                                                                                                                                          
    db <- src_sqlite(dbname)                                                                                                                                                                                                                            
    dbt <- tbl(db,'data')                                                                                                                                                                                                                               

    q <- dbt %>%                                                                                                                                                                                                                                        
    select(c(repid, locus,window,generation,tajd)) %>%                                                                                                                                                                                
    filter(generation <= 14*5e3, repid < 2) %>%                                                                                                                                                                                                     
    mutate(mu=mu,opt=opt)#/5000)                                                                                                                                                                               

    dt = collect(q)                                                                                                                                                                                                                       
    dt                                                                                                                                                                                                               
}                                                                                                                                                                                                                                                       

files <- dir(path="../../mlocus_pickle/",pattern="*.genome_scan.db")                                                                                                                                                                      
                                                                                                                                                                                                                 
data = data.frame()                                                                                                                                                                                                 
                                                                                                                                                                                                                          
for (i in files)                                                                                                                                                                                                              
{                                                                                                                                                                                                                     
    data = bind_rows(data,process_genome_scan(i))                                                                                                                                                                                                       
}
gz = gzfile("tajimasd.txt.gz")                                                                                                                                                                                       
write_delim(data, gz, delim='\t')
```
