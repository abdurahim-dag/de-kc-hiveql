select sum(passenger_count) from taxi_2.taxi_data
union all
select sum(passenger_count) from taxi_2.trip_part
union all
select sum(passengers_total) from taxi_2.v_summary
union all
select sum(passengers_total) from taxi_2.summary;