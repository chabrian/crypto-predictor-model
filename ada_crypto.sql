
-- drop table if you need to recycle
-- drop table ada_orig;

create TABLE ada_orig (
date_orig DATE,
Daystarttoend INT,
Open_ada DOUBLE PRECISION,
High_ada DOUBLE PRECISION,
Low_ada DOUBLE PRECISION,
Close_ada DOUBLE PRECISION,
Volume_ada DOUBLE PRECISION,
MarketCap_ada DOUBLE PRECISION
);

-- Validating that the data exists

select count (*) from ada_orig;

select * from ada_orig;

SELECT
   DISTINCT daystarttoend
FROM
   ada_orig order by daystarttoend ;