CREATE TABLE ch_local
(
    id Int64,
    title String,
    description String,
    content String,
    date Date
)
ENGINE = MergeTree()
PARTITION BY date
ORDER BY id;
