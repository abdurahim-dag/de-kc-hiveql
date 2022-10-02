-- Скриипт заполнения partition таблицы

set hive.exec.dynamic.partition.mode=nonstrict;

with days as (
  select to_date(tpep_pickup_datetime) as day from taxi_2.taxi_data group by to_date(tpep_pickup_datetime)
)
insert into taxi_2.trip_part partition(dt)
select t.*, days.day as dt
from taxi_2.taxi_data t, days
where to_date(t.tpep_pickup_datetime) = days.day;
