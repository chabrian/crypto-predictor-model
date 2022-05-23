## Database Information

The file was obtained from the coindecko site. It contained daily data in a csv format of the ADA crypto coin price. The starting date of the data in the file was  10/02/2017 and the last data point extracted was 04/26/2022. 

### Cleanup and pre processing cleanup

## Input files for fetaures and historic data are obtained from:
https://coincodex.com/crypto/ethereum/historical-data/ (using Ethereum Crypto as an example). Obtain the data for XRP and ADA similarly

## Basic PRocessing
Your csv file must resemble the following structure prior to being utilized by the programs
type_crypto |	date_orig| daystarttoend	open_|	high_|	low_|	close_|	volume_|	marketcap_| (the pipe symbol used here is meant to separate the columns for a readme perspective. It should not be used in the Excel CSV file.



### DB composition
Schema |         Name         		| Type  |  Owner
--------+-------------------------------+-------+----------
 public | crypto_orig          		| table | postgres
 public | clean_df_30_day		| table | postgres
 public | clean_df_60_day      		| table | postgres
 public | predict_df_30_day   		| table | postgres
 public | predict_df_60_day    		| table | postgres
 public | predict_df_30_day_arima  	| table | postgres
 public | predict_df_60_day_arima	| table | postgres
 
 ## DB Conenction String
 host_name = 'database-1.cvhixt1fojqo.us-east-1.rds.amazonaws.com'
 
 ## DB Tables SQL
 create table crypto_orig (
type_crypto varchar,
date_orig DATE,
daystarttoend INT,
open_ DOUBLE PRECISION,
high_ DOUBLE PRECISION,
low_ DOUBLE PRECISION,
close_ DOUBLE PRECISION,
volume_ DOUBLE PRECISION,
marketCap_ DOUBLE PRECISION

);
-- clean_df_30_day

create table clean_df_30_day (
type_crypto text,
date_orig DATE,
daysstarttoend bigint,
open_ double precision,
high_ double precision,
low_double precision,
close_ double precision,
volume_ double precision,
marketcap_ double precision,
date_pred DATE,
Close_pred DOUBLE PRECISION

);

-- clean_df_60_day
create table clean_df_60_day (
type_crypto text,
date_orig DATE,
daysstarttoend bigint,
open_ double precision,
high_ double precision,
low_double precision,
close_ double precision,
volume_ double precision,
marketcap_ double precision,
date_pred DATE,
Close_pred DOUBLE PRECISION

);



-- predict_df_30_day 
create table predict_df_30_day (
type_crypto varchar,
date date,
close_orig double precision,
close_pred double precision

);

-- predict_df_60_day 
create table predict_df_60_day (
type_crypto varchar,
date date,
close_orig double precision,
close_pred double precision

);

-- predict_df_30_day_arima 
create table predict_df_30_day (
type_crypto varchar,
date date,
close_orig double precision,
close_pred double precision

);

-- predict_df_60_day_arima
create table predict_df_60_day (
type_crypto varchar,
date date,
close_orig double precision,
close_pred double precision

);
