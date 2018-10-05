library(data.table)

de <- new.env()
de$consum_train <- fread(file = 'data/consumption_train.csv')
de$meta         <- fread(file = 'data/meta.csv')
de$submission_f <- fread(file = 'data/submission_format.csv')
de$cold_start_t <- fread(file = 'data/cold_start_test.csv')
