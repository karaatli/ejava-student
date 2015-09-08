create table ELEAGUE_VEN (
    ID bigint generated by default as identity (start with 1),
    NAME varchar(20) not null,
    ADDR_ID bigint not null,
    primary key (ID)
);

create table ELEAGUE_ADDR (
    ID bigint generated by default as identity (start with 1),
    CITY varchar(20) not null,
    primary key (ID)
);

alter table ELEAGUE_VEN
    add constraint ELEAGUE_VEN_ADD_FK
    foreign key (ADDR_ID)
    references ELEAGUE_ADDR;