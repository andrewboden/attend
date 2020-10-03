--insert into house (house_name, address, admin_id) values ('hypehouse', '1234 Cherry Lane', 1)

--insert into users (name, email, username, passwordHash) values ('Andrew Boden', 'ab@brown.edu', 'bodenn', 'temporary1')
--insert into users (name, email, username, passwordHash) values ('Nathan Shao', 'ns@cmu.edu', 'prisoncore23', 'temporary2')
--insert into users (name, email, username, passwordHash) values ('Delora Li', 'dl@brown.edu', 'delzli', 'temporary3')
--insert into users (name, email, username, passwordHash) values ('Keren Mahkervaks', 'km@penn.edu', 'kmahk', 'temporary4')

--insert into house_members (user_id, house_id) values (1, 1), (2, 1), (3, 1), (4, 1);

--select * from house_members;
--select * from house;
--select * from users;
--select * from guests;

--create table house_members (user_id int, house_id int);

--delete from house_members where user_id >= 1;


--------- ABOVE WERE DEALING WITH TEST DATA. BELOW IS QUERIES ---------

--User sign up and login--
--check if user exists, 0 if not exist, 1 if exists
select count(*) from users where email = {user_email};
--insert new user
insert into users (name, email, username, passwordHash), ({user_name}, {user_email}, {user_username}, {user_password_hash});
--login auth 1 if checks out, 2 if doesnt check out
select count(*) from users where email = {user_email} and password_hash = {user_password_hash}

--count number of guests at a certain time--
select count(*) from guests where 