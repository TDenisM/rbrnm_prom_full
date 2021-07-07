CREATE TABLE IF NOT EXISTS events_local ON CLUSTER local
(
    id Int64,
    event_type Int64,
    date DateTime('Europe/Moscow') DEFAULT now()
)
ENGINE = ReplicatedMergeTree('/clickhouse/{cluster}/tables/events_local', '{replica}')
PARTITION BY date
ORDER BY id;
