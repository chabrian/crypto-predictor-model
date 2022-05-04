
-- drop table if you need to recycle
-- drop table ada_orig;

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

-- drop table if you need to recycle
-- drop table ada_final;

create TABLE ada_final (
type_crypto varchar,
date_orig DATE,
Daystarttoend INT,
Open_ada DOUBLE PRECISION,
High_ada DOUBLE PRECISION,
Low_ada DOUBLE PRECISION,
Close_ada DOUBLE PRECISION,
Volume_ada DOUBLE PRECISION,
MarketCap_ada DOUBLE PRECISION,
close_price_pred DOUBLE PRECISION,
close_date_pred DATE

);

-- Validating that the data exists

select count (*) from ada_orig;

select * from ada_orig;

SELECT
   DISTINCT daystarttoend
FROM
   ada_orig order by daystarttoend ;

-- Validate that the columns were created accurately via the DDL.
SELECT * FROM information_schema.COLUMNS WHERE TABLE_NAME = 'ada_orig';

-- Test table where data is stored

create TABLE ada_training (
type_crypto varchar,
date_orig DATE,
Daystarttoend INT,
Open_ada DOUBLE PRECISION,
High_ada DOUBLE PRECISION,
Low_ada DOUBLE PRECISION,
Close_ada DOUBLE PRECISION,
Volume_ada DOUBLE PRECISION,
MarketCap_ada DOUBLE PRECISION,
close_price_pred DOUBLE PRECISION,
close_date_pred DATE

);

-- Final table where type_crypto, date, predicted close is stored

create TABLE ada_predict (
type_crypto varchar,
date_pred DATE,
pred_duration INT,
Close_ada DOUBLE PRECISION,

);

