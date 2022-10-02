-- Скриипт загрузки данных для таблиц-справочников

-- rates
insert into taxi_2.rates
select 1, 'Standard rate'
union all
select 2, 'JFK'
union all
select 3, 'Newark'
union all
select 4, 'Nassau or Westchester'
union all
select 5, 'Negotiated fare'
union all
select 6, 'Group ride';

-- payment
with t as (select 1, 'Credit card'
union all
select 2, 'Cash'
union all
select 3, 'No charge'
union all
select 4, 'Dispute'
union all
select 5, 'Unknown'
union all
select 6, 'Voided trip')
insert into taxi_2.payment select * from t;

-- dim_vendor
insert into taxi_2.dim_vendor
select 1, 'Creative Mobile Technologies'
union all
select 2, 'VeriFone Inc';