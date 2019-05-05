create table location
(
  id      int auto_increment
    primary key,
  street  varchar(255) not null,
  hsnr    varchar(255) not null,
  city    varchar(255) not null,
  zip     varchar(255) not null,
  country varchar(255) not null
)
  collate = utf8mb4_unicode_ci;

create table order_status
(
  id     int auto_increment
    primary key,
  status varchar(255) not null
)
  collate = utf8mb4_unicode_ci;

create table priv
(
  id         int auto_increment
    primary key,
  name       varchar(255) not null,
  priv_level int          not null
)
  collate = utf8mb4_unicode_ci;

create table customer
(
  id        int auto_increment
    primary key,
  priv_id   int          not null,
  firstname varchar(255) not null,
  lastname  varchar(255) not null,
  email     varchar(255) not null,
  password  varchar(255) not null,
  company   varchar(255) not null,
  iban      varchar(255) not null,
  bic       varchar(255) not null,
  street    varchar(255) not null,
  hsnr      varchar(255) not null,
  city      varchar(255) not null,
  country   varchar(255) not null,
  zip       varchar(255) not null,
  tel       varchar(255) not null,
  uuid      varchar(255) not null,
  constraint FK_5D9F75A1749855C2
    foreign key (priv_id) references priv (id)
)
  collate = utf8mb4_unicode_ci;

create table employee
(
  id        int auto_increment
    primary key,
  priv_id   int          not null,
  firstname varchar(255) not null,
  lastname  varchar(255) not null,
  email     varchar(255) not null,
  password  varchar(255) not null,
  uuid      varchar(255) not null,
  constraint FK_5D9F75A1749855C1
    foreign key (priv_id) references priv (id)
)
  collate = utf8mb4_unicode_ci;

create index IDX_5D9F75A1749855C1
  on employee (priv_id);

create table `order`
(
  id                    int auto_increment
    primary key,
  customer_id           int      not null,
  last_edit_employee_id int      null,
  status_id             int      not null,
  last_edit_date        datetime not null,
  constraint FK_F52993986BF700BD
    foreign key (status_id) references order_status (id),
  constraint FK_F52993989395C3F3
    foreign key (customer_id) references customer (id),
  constraint FK_F5299398B07F531E
    foreign key (last_edit_employee_id) references employee (id)
)
  collate = utf8mb4_unicode_ci;

create index IDX_F52993986BF700BD
  on `order` (status_id);

create index IDX_F52993989395C3F3
  on `order` (customer_id);

create index IDX_F5299398B07F531E
  on `order` (last_edit_employee_id);

create table room_key_status
(
  id int auto_increment
    primary key
)
  collate = utf8mb4_unicode_ci;

create table room_key
(
  id        int auto_increment
    primary key,
  status_id int          not null,
  room_key  varchar(255) not null,
  constraint FK_881616B46BF700BD
    foreign key (status_id) references room_key_status (id)
)
  collate = utf8mb4_unicode_ci;

create index IDX_881616B46BF700BD
  on room_key (status_id);

create table room_type
(
  id    int auto_increment
    primary key,
  price double not null,
  size  double not null
)
  collate = utf8mb4_unicode_ci;

create table room
(
  id           int auto_increment
    primary key,
  room_type_id int not null,
  room_key_id  int not null,
  location_id  int not null,
  constraint FK_729F519B296E3073
    foreign key (room_type_id) references room_type (id),
  constraint FK_729F519B4C5A93F2
    foreign key (room_key_id) references room_key (id),
  constraint FK_729F519B64D218E
    foreign key (location_id) references location (id)
)
  collate = utf8mb4_unicode_ci;

create table order_room
(
  order_id int        not null,
  room_id  int        not null,
  active   tinyint(1) not null,
  primary key (order_id, room_id),
  constraint FK_3F6E6B8C54177093
    foreign key (room_id) references room (id)
      on delete cascade,
  constraint FK_3F6E6B8C8D9F6D38
    foreign key (order_id) references `order` (id)
      on delete cascade
)
  collate = utf8mb4_unicode_ci;

create index IDX_3F6E6B8C54177093
  on order_room (room_id);

create index IDX_3F6E6B8C8D9F6D38
  on order_room (order_id);

create index IDX_729F519B296E3073
  on room (room_type_id);

create index IDX_729F519B4C5A93F2
  on room (room_key_id);

create index IDX_729F519B64D218E
  on room (location_id);

create table session
(
  id                int auto_increment
    primary key,
  session_uuid      varchar(36)                             not null,
  user_uuid         varchar(36)                             not null,
  session_timestamp timestamp default CURRENT_TIMESTAMP     not null,
  login_timestamp   timestamp default '0000-00-00 00:00:00' not null,
  active            tinyint(1)                              not null,
  user_agent        varchar(255)                            not null,
  constraint session_session_uuid_uindex
    unique (session_uuid)
);


