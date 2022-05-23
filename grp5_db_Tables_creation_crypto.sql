-- This file has been update to include:
-- the predict_df_60_day_arima and the predict_df_30_day_arima

-- Besides providing the understanding of the database model, it provides utility to opertions teams to perform enterprise operations such as bcku restore etc...
-- It provides the architects the udnerstanding of the database model so they can build APIs or nterfaces to connect to cient applications who require this data.

-Steps to create the database
--1. Create an instance of the DB. In this case we have used Postgres DB isntance in Amazon DBS
--2. Create the table crypto_orig
--3. Run the programs - SupervisedModelCombined
--4. Run the programs - ARIMAModelCombined
--5. The resultant tables are created and seeded with the model(s) data.

create table crypto_predict_30_day (
type_crypto varchar,
date_orig DATE,
Close_ DOUBLE PRECISION,
date_pred_30 DATE,
Close_pred_30 DOUBLE PRECISION

);

create table crypto_predict_60_day (
type_crypto varchar,
date_orig DATE,
Close_ DOUBLE PRECISION,
date_pred_60 DATE,
Close_pred_60 DOUBLE PRECISION

-- The create databse script is as:

-- Database: Crypto_Data

-- DROP DATABASE IF EXISTS "Crypto_Data";

CREATE DATABASE "Crypto_Data"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
-----

Schema |         Name         		| Type  |  Owner
--------+-------------------------------+-------+----------
 public | crypto_orig          		| table | postgres
 public | clean_df_30_day		| table | postgres
 public | clean_df_60_day      		| table | postgres
 public | predict_df_30_day   		| table | postgres
 public | predict_df_60_day    		| table | postgres
 public | predict_df_30_day_arima  	| table | postgres
 public | predict_df_60_day_arima	| table | postgres


host_name = 'database-1.cvhixt1fojqo.us-east-1.rds.amazonaws.com'


--- Tables 

-- drop table if you need to recycle
-- drop table crypto_orig;

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



