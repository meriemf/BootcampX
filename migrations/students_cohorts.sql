create table cohorts (
  id serial primary key not null,
  name varchar(255) not null,
  start_date date,
  end_date date

);
create table students ( 
    id serial primary key not null,
    name varchar(255) not null,
    email varchar(225),
    phone varchar(32), 
    github varchar(255), 
    start_date date,
    end_date date,
    cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
    );

