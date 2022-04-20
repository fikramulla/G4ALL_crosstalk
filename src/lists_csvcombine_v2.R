library(dplyr)                                                 
library(plyr)                                                   
library(readr)

rm(list=ls())
setwd("C:/Users/Faiz/Desktop/G4/dat/")

#A) load all top20 csvs from folder, rbind all
df <- list.files(path = "./top20_lists",     # Identify all csv files in folder
                       pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            # Store all files in list
  bind_rows                                                       # Combine data sets into one data set 
docid <- c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
           2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
           3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
           4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
           5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
           7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
           8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
           9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,
           10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10)
df['docid'] <- docid
df = df[,c(3,1,2)] 
write.csv(df, "./csv_out2/top20_all10.csv", row.names = FALSE)

#B) load all sentiments csvs from folder, rbind all
df <- list.files(path = "./sentiment_lists_withid",     
                      pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows   
docid <- c(1,1,1,1,1,1,1,1,
           2,2,2,2,2,2,2,2,
           3,3,3,3,3,3,3,3,
           4,4,4,4,4,4,4,4,
           5,5,5,5,5,5,5,5,
           7,7,7,7,7,7,7,7,
           8,8,8,8,8,8,8,8,
           9,9,9,9,9,9,9,9,
           10,10,10,10,10,10,10,10)
df['docid'] <- docid
df = df[,c(4,1,2,3)]
write.csv(df, "./csv_out2/sentiment_all10.csv", row.names = FALSE)

#C) load all pos_negs csvs from folder, rbind all
df <- list.files(path = "./posneg_lists_withid",     
                      pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows
docid <- c(1,1,
           2,2,
           3,3,
           4,4,
           5,5,
           7,7,
           8,8,
           9,9,
           10,10)
df['docid'] <- docid
df = df[,c(4,1,2,3)]
write.csv(df, "./csv_out2/posneg_all10.csv", row.names = FALSE)

#D) load all sdgs csvs from folder, rbind all
df <- list.files(path = "./sdg_lists",     
                      pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows 
docid <- c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
           2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
           3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
           4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
           5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
           7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
           8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
           9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,
           10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10)
df['docid'] <- docid
df = df[,c(4,1,2,3)] 
write.csv(df, "./csv_out2/sdgs_all10.csv", row.names = FALSE)

#E) load all continents csvs from folder, rbind all
df <- list.files(path = "./conti_lists",     
                      pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows
docid <- c(1,1,1,1,1,1,1,1,
           2,2,2,2,2,2,2,2,
           3,3,3,3,3,3,3,3,
           4,4,4,4,4,4,4,4,
           5,5,5,5,5,5,5,5,
           7,7,7,7,7,7,7,7,
           8,8,8,8,8,8,8,8,
           9,9,9,9,9,9,9,9,
           10,10,10,10,10,10,10,10)
df['docid'] <- docid
df = df[,c(4,1,2,3)] 
write.csv(df, "./csv_out2/contis_all10.csv", row.names = FALSE)

#F) load all countries csvs from folder, rbind all
df <- list.files(path = "./country_lists",     
                      pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows
docid <- c(1,1,1,1,1,1,1,1,
           2,2,2,2,2,2,2,2,
           3,3,3,3,3,3,3,3,
           4,4,4,4,4,4,4,4,
           5,5,5,5,5,5,5,5,
           7,7,7,7,7,7,7,7,
           8,8,8,8,8,8,8,8,
           9,9,9,9,9,9,9,9,
           10,10,10,10,10,10,10,10)
df['docid'] <- docid
df = df[,c(4,1,2,3)] 
write.csv(df, "./csv_out2/country_all10.csv", row.names = FALSE)


####SDG2SDG list combine (from python colab, exported with docID)
#G) load all sdg2sdge dge csvs from folder, rbind all
df <- list.files(path = "./sdg2sdg_lists",     
                 pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                                            
  bind_rows
df = df[,c(5,1,2,3,4)]
write.csv(df, "./csv_out2/sdg2sdg_all10.csv", row.names = FALSE)
