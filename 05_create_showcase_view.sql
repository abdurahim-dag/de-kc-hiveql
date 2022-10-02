-- Скриипт создания view, для витрины

CREATE or replace VIEW taxi_2.v_summary as
select
  p.name as payment_type,
  t.dt as `date`,
  round(sum(t.tip_amount)/count(t.dt),2) as tips_average_amount,
  sum(t.passenger_count) as passengers_total
from taxi_2.trip_part t
  join taxi_2.payment p on p.id = t.payment_type
group by t.dt, p.name;
