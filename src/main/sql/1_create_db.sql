drop database if exists escalade;
drop role if exists escalade;
-- create the requested escalade user
create user escalade createdb password 'escalade';

-- create a escalade database
create database escalade owner escalade;