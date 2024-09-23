-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    JoinDate DATE,
    Country VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

-- Posts Table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    PostContent TEXT,
    PostDate DATE,
    PostCategory VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Comments Table
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    CommentContent TEXT,
    CommentDate DATE,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Likes Table
CREATE TABLE Likes (
    LikeID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    LikeDate DATE,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Followers Table
CREATE TABLE Followers (
    FollowerID INT PRIMARY KEY,
    UserID INT,
    FollowerUserID INT,
    FollowDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (FollowerUserID) REFERENCES Users(UserID)
);
-- User Table
INSERT INTO Users (UserID, UserName, JoinDate, Country, Age, Gender)
VALUES 
(1, 'Alice', '2023-01-15', 'USA', 25, 'Female'),
(2, 'Bob', '2023-02-10', 'UK', 30, 'Male'),
(3, 'Charlie', '2023-01-20', 'India', 28, 'Male'),
(4, 'Diana', '2023-03-05', 'Australia', 22, 'Female'),
(5, 'Eve', '2023-04-12', 'Canada', 29, 'Female'),
(6, 'Frank', '2023-05-18', 'USA', 33, 'Male'),
(7, 'Grace', '2023-06-21', 'Germany', 26, 'Female'),
(8, 'Hank', '2023-07-19', 'France', 34, 'Male'),
(9, 'Ivy', '2023-08-11', 'Brazil', 27, 'Female'),
(10, 'Jack', '2023-09-01', 'Japan', 31, 'Male');

--posts table
INSERT INTO Posts (PostID, UserID, PostContent, PostDate, PostCategory)
VALUES 
(1, 1, 'Exploring the city!', '2023-03-01', 'Travel'),
(2, 2, 'Learning SQL is fun!', '2023-03-10', 'Education'),
(3, 3, 'How to cook pasta', '2023-03-15', 'Food'),
(4, 4, 'Nature is beautiful', '2023-03-20', 'Photography'),
(5, 5, 'Top 10 movies of 2023', '2023-03-25', 'Entertainment'),
(6, 6, 'Started my new fitness journey', '2023-04-01', 'Fitness'),
(7, 7, 'Tech trends to watch', '2023-04-05', 'Technology'),
(8, 8, 'My first painting', '2023-04-10', 'Art'),
(9, 9, 'A day at the beach', '2023-04-15', 'Travel'),
(10, 10, 'Tips for better sleep', '2023-04-20', 'Health');

--Comments Table
INSERT INTO Comments (CommentID, PostID, UserID, CommentContent, CommentDate)
VALUES 
(1, 1, 2, 'Looks amazing!', '2023-03-02'),
(2, 1, 3, 'I want to visit too!', '2023-03-03'),
(3, 2, 1, 'I totally agree!', '2023-03-11'),
(4, 2, 4, 'SQL is awesome!', '2023-03-12'),
(5, 3, 5, 'This recipe looks delicious!', '2023-03-16'),
(6, 4, 6, 'Stunning photo!', '2023-03-21'),
(7, 5, 7, 'Great recommendations!', '2023-03-26'),
(8, 6, 8, 'Keep it up!', '2023-04-02'),
(9, 7, 9, 'Very insightful!', '2023-04-06'),
(10, 8, 10, 'Amazing work!', '2023-04-11');

-- 
Here are 10 records for each table in your social media analysis database:

Users Table
sql
Copy code
INSERT INTO Users (UserID, UserName, JoinDate, Country, Age, Gender)
VALUES 
(1, 'Alice', '2023-01-15', 'USA', 25, 'Female'),
(2, 'Bob', '2023-02-10', 'UK', 30, 'Male'),
(3, 'Charlie', '2023-01-20', 'India', 28, 'Male'),
(4, 'Diana', '2023-03-05', 'Australia', 22, 'Female'),
(5, 'Eve', '2023-04-12', 'Canada', 29, 'Female'),
(6, 'Frank', '2023-05-18', 'USA', 33, 'Male'),
(7, 'Grace', '2023-06-21', 'Germany', 26, 'Female'),
(8, 'Hank', '2023-07-19', 'France', 34, 'Male'),
(9, 'Ivy', '2023-08-11', 'Brazil', 27, 'Female'),
(10, 'Jack', '2023-09-01', 'Japan', 31, 'Male');
Posts Table
sql
Copy code
INSERT INTO Posts (PostID, UserID, PostContent, PostDate, PostCategory)
VALUES 
(1, 1, 'Exploring the city!', '2023-03-01', 'Travel'),
(2, 2, 'Learning SQL is fun!', '2023-03-10', 'Education'),
(3, 3, 'How to cook pasta', '2023-03-15', 'Food'),
(4, 4, 'Nature is beautiful', '2023-03-20', 'Photography'),
(5, 5, 'Top 10 movies of 2023', '2023-03-25', 'Entertainment'),
(6, 6, 'Started my new fitness journey', '2023-04-01', 'Fitness'),
(7, 7, 'Tech trends to watch', '2023-04-05', 'Technology'),
(8, 8, 'My first painting', '2023-04-10', 'Art'),
(9, 9, 'A day at the beach', '2023-04-15', 'Travel'),
(10, 10, 'Tips for better sleep', '2023-04-20', 'Health');
Comments Table
sql
Copy code
INSERT INTO Comments (CommentID, PostID, UserID, CommentContent, CommentDate)
VALUES 
(1, 1, 2, 'Looks amazing!', '2023-03-02'),
(2, 1, 3, 'I want to visit too!', '2023-03-03'),
(3, 2, 1, 'I totally agree!', '2023-03-11'),
(4, 2, 4, 'SQL is awesome!', '2023-03-12'),
(5, 3, 5, 'This recipe looks delicious!', '2023-03-16'),
(6, 4, 6, 'Stunning photo!', '2023-03-21'),
(7, 5, 7, 'Great recommendations!', '2023-03-26'),
(8, 6, 8, 'Keep it up!', '2023-04-02'),
(9, 7, 9, 'Very insightful!', '2023-04-06'),
(10, 8, 10, 'Amazing work!', '2023-04-11');

-- Likes Table
INSERT INTO Likes (LikeID, PostID, UserID, LikeDate)
VALUES 
(1, 1, 3, '2023-03-01'),
(2, 2, 4, '2023-03-10'),
(3, 3, 5, '2023-03-15'),
(4, 4, 6, '2023-03-20'),
(5, 5, 7, '2023-03-25'),
(6, 6, 8, '2023-04-01'),
(7, 7, 9, '2023-04-05'),
(8, 8, 10, '2023-04-10'),
(9, 9, 1, '2023-04-15'),
(10, 10, 2, '2023-04-20');

--Followers Table
INSERT INTO Followers (FollowerID, UserID, FollowerUserID, FollowDate)
VALUES 
(1, 1, 2, '2023-02-01'),
(2, 1, 3, '2023-02-02'),
(3, 2, 4, '2023-03-05'),
(4, 2, 5, '2023-03-06'),
(5, 3, 6, '2023-04-08'),
(6, 3, 7, '2023-04-09'),
(7, 4, 8, '2023-05-12'),
(8, 5, 9, '2023-06-13'),
(9, 6, 10, '2023-07-15'),
(10, 7, 1, '2023-08-18');

select * from Users

-- Count the number of users in each country
select country, count(*) as Numberofusers
from users
group by Country;

--Total number of posts made by each user
select UserId, count(PostID) as TotalPosts
from Posts
group by UserID;

--Find the most recent comment for each post
select PostID, max(CommentDate) as LatestComment
from Comments
group by PostID;

--Find all users who liked a specific post
select u.UserName
from Likes L 
join Users u on L.UserId = U.UserId
where L.PostID = 1;

--Find users with the highest follower count
select u.UserName, count(F.FollowerUserID) as FollowerCount
from Users U
join Followers F on U.UserId = F.UserId
group by U.UserName
order by FollowerCount desc
limit 5;
--Find the top 3 most liked posts
SELECT P.PostContent, COUNT(L.LikeID) AS LikeCount
FROM Posts P
JOIN Likes L ON P.PostID = L.PostID
GROUP BY P.PostID
ORDER BY LikeCount DESC
LIMIT 3;

--Identify the engagement rate (likes + comments) for each post
SELECT P.PostID, 
       (COUNT(DISTINCT L.LikeID) + COUNT(DISTINCT C.CommentID)) AS EngagementRate
FROM Posts P
LEFT JOIN Likes L ON P.PostID = L.PostID
LEFT JOIN Comments C ON P.PostID = C.PostID
GROUP BY P.PostID;

--Retrieve the user who posted the most content in each category
WITH CategoryCount AS (
    SELECT UserID, PostCategory, COUNT(PostID) AS PostCount
    FROM Posts
    GROUP BY UserID, PostCategory
)
SELECT UserID, PostCategory, PostCount AS MaxPosts
FROM CategoryCount
WHERE (PostCategory, PostCount) IN (
    SELECT PostCategory, MAX(PostCount)
    FROM CategoryCount
    GROUP BY PostCategory
);

--Rank users based on the number of followers
select U.UserID, U.UserName, count(F.FollowerUserID) as TotalFollowers,
       rank() over( order by count(F.FollowerUserID) desc) as rank
from Users U
join Followers F on U.UserID = F.UserID
group by U.UserID, U.UserName;

-- Cumulative number of posts over time
select UserID, PostDate,
       Count(PostID) over (order by PostDate) as CumulativePosts
from Posts;



































