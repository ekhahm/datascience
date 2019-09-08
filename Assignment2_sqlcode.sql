create table movies(
 mID int,
 title varchar(100),
 primary key (mID)
 );
 
 create table subjects(
 rID int,
 initial varchar(3)
 );
 
 create table ratings(
 mID int,
 rID int,
 ratings int
 );
 
 Insert into movies(mID, title)
 values (1,'Avengers:Endgame'),
		(2,'Toy Story4'),
        (3,'Godzilla'), 
        (4,'John Wick 3'),
		(5,'Us'),
        (6, 'Lion king');

Insert into subjects(rID, initial)
value (101, 'SK'),
	  (102, 'HH'),
      (103, 'DH'),
      (104, 'JJ'),
      (105, 'ML');

insert into ratings(mID, rID, ratings)
values(1, 101,5),
	  (1, 102, NULL),
      (1, 103, 4),
      (1, 104, 5),
      (1, 105, 4),
      (2, 101, 2),
	  (2, 102, 5),
      (2, 103, 3),
      (2, 104, 4),
      (2, 105, 5),
      (3, 101, 5),
	  (3, 102, 2),
      (3, 103, 2),
      (3, 104, 3),
      (3, 105, 2),
      (4, 101, 4),
	  (4, 102, 3),
      (4, 103, 3),
      (4, 104, 3),
      (4, 105, 4),
      (5, 101, 1),
	  (5, 102, 2),
      (5, 103, 5),
      (5, 104, null),
      (5, 105, 4),
      (6, 101, 2),
	  (6, 102, 4),
      (6, 103, 4),
      (6, 104, 3),
      (6, 105, 2);




Select * from movies;
select * from subjects;
select * from ratings;


select title, avg(ratings) from movies, ratings
where movies.mID = ratings.mID
group by movies.title
order by avg(ratings);