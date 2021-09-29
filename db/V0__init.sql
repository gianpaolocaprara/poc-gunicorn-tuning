create table results
(
    id  serial
        constraint results_pk
            primary key,
    text text
);

alter table results
    owner to postgres;
