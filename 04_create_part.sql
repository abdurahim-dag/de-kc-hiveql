-- Скриипт создания партицинированной таблицы

create external table IF NOT EXISTS taxi_2.trip_part
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
partitioned by (dt date)
stored as parquet
location '/user/ubuntu/data-test-6/part/';