-- Here is the required steps to run kontrol with postgresql storage.

-- those can be helpful for a fresh start

-- drop the database
-- DROP DATABASE IF EXISTS koding;

-- drop the role
-- DROP ROLE IF EXISTS kontrol;

-- drop the user
-- DROP USER IF EXISTS kontrol;

-- drop the tables
-- DROP TABLE IF EXISTS "kite"."kite";
-- DROP TABLE IF EXISTS "kite"."key";

-- create role
CREATE ROLE kontrol;

-- create user
-- please change this password according to your conventions
<<<<<<< 09e28193d71835257dd994a42da0b867bedd3533:go/src/github.com/koding/kite/kontrol/001-schema.sql
CREATE USER kontrolapplication PASSWORD 'somerandompassword';
=======
CREATE USER kontrolapp_2016_05 PASSWORD 'kontrolapp_2016_05';
>>>>>>> Test resolve conflict:go/src/socialapi/db/sql/kontrol/001-schema.sql

GRANT kontrol TO kontrolapp_2016_05;

