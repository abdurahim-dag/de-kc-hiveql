-- Скриипт создания таблицы, для витрины

create external table IF NOT EXISTS taxi_2.summary
(
  payment_type string,
  `date` timestamp,
  tips_average_amount double,
  passengers_total bigint
)
stored as parquet;