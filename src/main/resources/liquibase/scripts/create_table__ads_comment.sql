-- liquibase formatted sql

-- changeset aalekseev:1

CREATE TABLE IF NOT EXISTS ads_comment
(
    pk         BIGSERIAL PRIMARY KEY,
    author_id  integer REFERENCES users (id),
    created_at timestamp,
    text       text,
    ads_pk     integer REFERENCES ads (pk)
);