CREATE TABLE IF NOT EXISTS events_distributed ON CLUSTER 'local'
(
    id Int64,
    event_type Int64,
    date DateTime('Europe/Moscow') DEFAULT now()
)
ENGINE = Distributed('{cluster}', 'default', 'events_local', rand());
