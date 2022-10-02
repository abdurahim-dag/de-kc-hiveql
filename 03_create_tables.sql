-- Скриипт создания таблиц данных

create external table IF NOT EXISTS taxi_2.taxi_data
(
  vendor_id string,
  tpep_pickup_datetime timestamp,
  tpep_dropoff_datetime timestamp,
  passenger_count int,
  trip_distance double,
  ratecode_id int,
  store_and_fwd_flag string,
  pulocation_id int,
  dolocation_id int,
  payment_type int,
  fare_amount double,
  extra double,
  mta_tax double,
  tip_amount double,
  tolls_amount double,
  improvement_surcharge double,
  total_amount double,
  congestion_surcharge double
)
row format delimited
fields terminated by ','
lines terminated by '\n'
location '/user/ubuntu/data-test-6/data/'
TBLPROPERTIES ("skip.header.line.count"="1");
