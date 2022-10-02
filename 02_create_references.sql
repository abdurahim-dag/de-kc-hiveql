-- Скриипт для создания таблиц-справочников

/**
1= Standard rate
2=JFK
3=Newark
4=Nassau or Westchester
5=Negotiated fare
6=Group ride
*/
create external table IF NOT EXISTS taxi_2.rates
(  id int,  name string)
stored as parquet;

-- 1= Credit card
-- 2= Cash
-- 3= No charge
-- 4= Dispute
-- 5= Unknown
-- 6= Voided trip
create external table IF NOT EXISTS taxi_2.payment
(
    id int,
    name string
)
stored as parquet;

-- 1= Creative Mobile Technologies, LLC; 2= VeriFone Inc
create external table IF NOT EXISTS taxi_2.dim_vendor
(
    id int,
    name string
)
stored as parquet;