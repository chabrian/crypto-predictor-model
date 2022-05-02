## Database Information

The file was obtained from the coindecko site. It contained daily data in a csv format of the ADA crypto coin price. The starting date of the data in the file was  10/02/2017 and the last data point extracted was 04/26/2022. 

### Cleanup and pre processing cleanup

1. The date filed was in a mixed format and not suitable for analysis. This was converted to a date field. Then the dates were ordered.
2. Another column type_crypto 
3. Lastly the data definition language for schema and table creation was performed using a postgres SQL database.
4. We have used Big data storage with postgres DB instance created on AWS and connected the local copy to transact and store within postgres on the AWS database instance.
5. Data from the csv was then imported into the table created. 



**SQLs used to create the table:**

create TABLE ada_orig (
type_crypto varchar,
date_orig DATE,
Daystarttoend INT,
Open_ada DOUBLE PRECISION,
High_ada DOUBLE PRECISION,
Low_ada DOUBLE PRECISION,
Close_ada DOUBLE PRECISION,
Volume_ada DOUBLE PRECISION,
MarketCap_ada DOUBLE PRECISION
);



**SQLs used to validate the Data imported and accuracy of the table**

--run this after the import of data from the CSV

select count (*) from ada_orig;

*1669*

-- 

-- run this after the import of data from the CSV

select * from ada_orig;

SELECT    DISTINCT daystarttoend
FROM    ada_orig order by daystarttoend ;

-- Validate that the columns were created accurately via the DDL.
SELECT * FROM information_schema.COLUMNS WHERE TABLE_NAME = 'ada_orig';