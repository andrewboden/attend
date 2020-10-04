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

--User sign up and login and info access--
--check if user exists, 0 if not exist, 1 if exists
select count(*) from users where email = {user_email} or username = {user_username};
--insert new user
insert into users (name, email, username, passwordHash) values ({user_name}, {user_email}, {user_username}, {user_password_hash});
--login auth exists a row if checks out, doesnt exist row if doesnt check out, provides user id for future queries
select user_id from users where username like {user_username} and password_hash like {user_password_hash}
--access list of houses this user is a part of
select house.house_id, house_name from house_members join house on house.house_id = house_members.house_id where user_id = {user_user_id}

--count number of guests after a certain time at a certain house--
select count(*) from guests where house_id = {user_house_id} and date_time_start >= {time}

--add guest
insert into guests (name, host_id, house_id, date_time_start, date_time_end) 
            values ({guest_name}, {user_user_id}, {user_house_id}, {start_time}, {end_time})

--guest list for user in house--
select guest_id, name, date_time_start, date_time_end from guests where host_id = {user_user_id} and house_id = {user_house_id}

--guest list for a house
select guest_id, name, date_time_start, date_time_end from guests where house_id = {user_house_id}

--delete guest
delete from guests where guest_id = {guest_id}