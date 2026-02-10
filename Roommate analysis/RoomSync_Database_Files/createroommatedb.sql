-- This is creating the database for 'RoomSync'

DROP DATABASE IF EXISTS RoomSync;
CREATE DATABASE RoomSync;
USE RoomSync;

-- TABLE 1: Users (basic information about the responder)

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    year VARCHAR(50) NOT NULL,
    major VARCHAR(100) NOT NULL,
    num_previous_roommates INT
);

INSERT INTO Users (user_id, first_name, age, year, major, num_previous_roommates) VALUES 
(1, 'Nadreah', 21, 'Senior', 'Criminal justice', 5),
(2, 'Peyton', 20, 'Junior', 'Computer Science', 3),
(3, 'Corey', 20, 'Junior', 'Health Science', 6),
(4, 'Sofia', 20, 'Junior', 'Music', 4),
(5, 'Abby', 19, 'Sophomore', 'Bio', 2),
(6, 'Ryan', 20, 'Junior', 'Cs & music tech', 1),
(7, 'Zaid', 20, 'Sophomore', 'International Business', 7),
(8, 'Sam', 18, 'Freshman', 'Computer Science', 1),
(9, 'Kiki', 22, 'Senior', 'Cive', 11),
(10, 'Sho', 21, 'Grad Student', 'Master of professional studies in applied machine intelligence', 4),
(11, 'Wama', 21, 'Senior', 'Education', 9),
(12, 'Chanell', 21, 'Senior', 'Psychology', 8),
(13, 'River', 22, 'Sophomore', 'Design', 4),
(14, 'Phoenix', 21, 'Senior', 'Computer Science', 5),
(15, 'Quinn', 25, 'Grad Student', 'Education', 1),
(16, 'Skyler', 24, 'Sophomore', 'Engineering', 3),
(17, 'Charlie', 23, 'Junior', 'Health Science', 1),
(18, 'Taylor', 25, 'Sophomore', 'Computer Science', 5),
(19, 'Miranda', 19, 'Grad Student', 'Cybersecurity', 2),
(20, 'Joe', 25, 'Graduate Student', 'Data Science', 3),
(21, 'Reese', 18, 'Sophomore', 'Business', 4),
(22, 'Parker', 18, 'Graduate Student', 'Biology', 4),
(23, 'Trinity', 25, 'Grad Student', 'Business', 5),
(24, 'Nate', 24, 'Graduate Student', 'Engineering', 5),
(25, 'Emerson', 22, 'Sophomore', 'Biology', 4),
(26, 'Oscar', 22, 'Graduate Student', 'International Business', 5),
(27, 'Drew', 20, 'Junior', 'International Business', 1),
(28, 'Ebony', 24, 'Sophomore', 'International Business', 4),
(29, 'Morgan', 19, 'Junior', 'Nursing', 5),
(30, 'Casey', 24, 'Freshman', 'Data Science', 4),
(31, 'Musa', 24, 'Senior', 'Accounting', 3),
(32, 'Finley', 25, 'Graduate Student', 'Finance', 3),
(33, 'Emerson', 24, 'Freshman', 'Design', 3),
(34, 'Dakota', 24, 'Grad Student', 'Biology', 5),
(35, 'Alexander', 19, 'Sophomore', 'Biology', 5),
(36, 'Harper', 20, 'Sophomore', 'Criminal Justice', 5);


-- TABLE 2: User_Lifestyle (lifestyle of the responder)

CREATE TABLE User_Lifestyle (
    user_id INT PRIMARY KEY,
    cleanliness_level INT NOT NULL,
    noise_level INT NOT NULL,
    sleep_schedule VARCHAR(50) NOT NULL,
    social_level INT NOT NULL,
    guest_frequency VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO User_Lifestyle (user_id, cleanliness_level, noise_level, sleep_schedule, social_level, guest_frequency) VALUES 
(1, 4, 3, 'Normal (11pm-1am)', 3, 'Rarely/Never'),
(2, 5, 1, 'Normal (11pm-1am)', 2, 'Rarely/Never'),
(3, 4, 2, 'Normal (11pm-1am)', 4, 'Few times a month'),
(4, 3, 1, 'Early bird (before 11pm)', 3, 'Few times a month'),
(5, 4, 3, 'Night owl (after 1am)', 4, 'Few times a month'),
(6, 5, 2, 'Night owl (after 1am)', 3, 'Few times a month'),
(7, 4, 2, 'Normal (11pm-1am)', 2, 'Rarely/Never'),
(8, 3, 1, 'Normal (11pm-1am)', 2, 'Rarely/Never'),
(9, 5, 1, 'Night owl (after 1am)', 5, 'Few times a month'),
(10, 5, 5, 'Early bird (before 11pm)', 2, 'Few times a month'),
(11, 4, 3, 'Normal (11pm-1am)', 3, 'Few times a month'),
(12, 3, 1, 'Normal (11pm-1am)', 3, 'Few times a month'),
(13, 3, 5, 'Early bird (before 11pm)', 1, 'Rarely/Never'),
(14, 5, 4, 'Normal (11pm-1am)', 4, 'Multiple times/week'),
(15, 1, 5, 'Early bird (before 11pm)', 2, 'Multiple times/week'),
(16, 3, 4, 'Very irregular', 3, 'Few times a month'),
(17, 5, 5, 'Early bird (before 11pm)', 1, 'Multiple times/week'),
(18, 3, 4, 'Very irregular', 4, 'Weekly'),
(19, 2, 5, 'Normal (11pm-1am)', 5, 'Rarely/Never'),
(20, 2, 1, 'Early bird (before 11pm)', 1, 'Multiple times/week'),
(21, 1, 3, 'Early bird (before 11pm)', 4, 'Multiple times/week'),
(22, 1, 1, 'Early bird (before 11pm)', 5, 'Weekly'),
(23, 4, 4, 'Normal (11pm-1am)', 5, 'Weekly'),
(24, 2, 4, 'Normal (11pm-1am)', 2, 'Rarely/Never'),
(25, 2, 2, 'Very irregular', 5, 'Rarely/Never'),
(26, 3, 3, 'Normal (11pm-1am)', 1, 'Few times a month'),
(27, 3, 3, 'Night owl (after 1am)', 1, 'Weekly'),
(28, 3, 3, 'Very irregular', 3, 'Weekly'),
(29, 4, 3, 'Early bird (before 11pm)', 1, 'Few times a month'),
(30, 5, 5, 'Night owl (after 1am)', 1, 'Weekly'),
(31, 4, 2, 'Night owl (after 1am)', 2, 'Multiple times/week'),
(32, 3, 1, 'Normal (11pm-1am)', 3, 'Rarely/Never'),
(33, 4, 4, 'Very irregular', 1, 'Few times a month'),
(34, 3, 2, 'Early bird (before 11pm)', 1, 'Multiple times/week'),
(35, 3, 3, 'Normal (11pm-1am)', 2, 'Weekly'),
(36, 5, 1, 'Normal (11pm-1am)', 3, 'Few times a month');


-- TABLE 3: Interests ( list of all interests/hobbies)

CREATE TABLE Interests (
    interest_id INT PRIMARY KEY AUTO_INCREMENT,
    interest_name VARCHAR(100) NOT NULL UNIQUE,
    category VARCHAR(50)
);

INSERT INTO Interests (interest_id, interest_name, category) VALUES 
(1, 'Academic', 'Academic'),
(2, 'Arts/Creative', 'Arts'),
(3, 'Cooking', 'Culinary'),
(4, 'Gaming', 'Technology'),
(5, 'Going out/Parties', 'Social'),
(6, 'Music', 'Arts'),
(7, 'Outdoor activities', 'Physical'),
(8, 'Reading', 'Arts'),
(9, 'Sports/Fitness', 'Physical'),
(10, 'Tech/Programming', 'Technology'),
(11, 'TV/Movies', 'Recreation');


-- TABLE 4: User_Interests (links users to their interests)

CREATE TABLE User_Interests (
    user_id INT NOT NULL,
    interest_id INT NOT NULL,
    PRIMARY KEY (user_id, interest_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (interest_id) REFERENCES Interests(interest_id)
);

INSERT INTO User_Interests (user_id, interest_id) VALUES 
-- Nadreah (user 1)
(1, 6), (1, 5), (1, 11), (1, 7), (1, 2), (1, 8),
-- Peyton (user 2)
(2, 6), (2, 11),
-- Corey (user 3)
(3, 9), (3, 6), (3, 5), (3, 3), (3, 11),
-- Sofia (user 4)
(4, 9), (4, 4), (4, 6), (4, 11), (4, 2),
-- Abby (user 5)
(5, 6), (5, 5), (5, 1), (5, 7),
-- Ryan (user 6)
(6, 9), (6, 4), (6, 6), (6, 5), (6, 3), (6, 1), (6, 10),
-- Zaid (user 7)
(7, 9), (7, 6), (7, 5), (7, 1),
-- Sam (user 8)
(8, 3), (8, 11), (8, 1), (8, 10), (8, 8),
-- Kiki (user 9)
(9, 6), (9, 5), (9, 11), (9, 7), (9, 8),
-- Sho (user 10)
(10, 9), (10, 4), (10, 6), (10, 3), (10, 11), (10, 7),
-- Wama (user 11)
(11, 6), (11, 11), (11, 1), (11, 2),
-- Chanell (user 12)
(12, 6), (12, 5), (12, 3), (12, 11), (12, 1), (12, 7), (12, 2),
-- River (user 13)
(13, 8), (13, 10), (13, 9),
-- Phoenix (user 14)
(14, 9), (14, 3), (14, 11), (14, 5), (14, 2), (14, 10),
-- Quinn (user 15)
(15, 11), (15, 8), (15, 7),
-- Skyler (user 16)
(16, 4), (16, 10), (16, 11),
-- Charlie (user 17)
(17, 5), (17, 7), (17, 2),
-- Taylor (user 18)
(18, 5), (18, 10), (18, 7), (18, 8),
-- Miranda (user 19)
(19, 11), (19, 6), (19, 5), (19, 3),
-- Joe (user 20)
(20, 8), (20, 11), (20, 5), (20, 1), (20, 9),
-- Reese (user 21)
(21, 2), (21, 4), (21, 7),
-- Parker (user 22)
(22, 5), (22, 6), (22, 3), (22, 2), (22, 1), (22, 8),
-- Trinity (user 23)
(23, 2), (23, 8), (23, 6), (23, 11),
-- Nate (user 24)
(24, 7), (24, 11), (24, 8), (24, 1),
-- Emerson (user 25)
(25, 9), (25, 7), (25, 11), (25, 8), (25, 6),
-- Oscar (user 26)
(26, 4), (26, 5), (26, 1), (26, 3), (26, 6),
-- Drew (user 27)
(27, 6), (27, 1), (27, 9),
-- Ebony (user 28)
(28, 5), (28, 6), (28, 11),
-- Morgan (user 29)
(29, 4), (29, 8), (29, 5), (29, 11), (29, 2),
-- Casey (user 30)
(30, 7), (30, 6), (30, 2), (30, 11),
-- Musa (user 31)
(31, 5), (31, 2), (31, 1), (31, 11), (31, 3),
-- Finley (user 32)
(32, 5), (32, 2), (32, 3), (32, 11), (32, 1),
-- Emerson (user 33)
(33, 4), (33, 1), (33, 11),
-- Dakota (user 34)
(34, 11), (34, 8), (34, 9), (34, 7), (34, 2),
-- Alexander (user 35)
(35, 10), (35, 5), (35, 11), (35, 6),
-- Harper (user 36)
(36, 10), (36, 11), (36, 3), (36, 7);


-- TABLE 5: Roommate_Experiences (each past roommate experience)

CREATE TABLE Roommate_Experiences (
    experience_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    duration VARCHAR(50) NOT NULL,
    housing_type VARCHAR(50) NOT NULL,
    start_date TIMESTAMP,
    overall_satisfaction INT NOT NULL,
    would_live_again VARCHAR(50) NOT NULL,
    had_conflicts VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Roommate_Experiences (experience_id, user_id, duration, housing_type, overall_satisfaction, would_live_again, had_conflicts) VALUES 
(1, 1, '12-18 months', 'University dorm', 4, 'Probably yes', 'No we got along great'),
(2, 2, '6-9 months', 'University dorm', 1, 'Definitely not', 'No we got along great'),
(3, 3, '3-6 months', 'Off-campus apartment', 1, 'Definitely not', 'Significant conflicts'),
(4, 4, '18+ months', 'University dorm', 4, 'Probably yes', 'No we got along great'),
(5, 5, '9-12 months', 'University dorm', 3, 'Probably not', 'Some moderate conflicts'),
(6, 6, '12-18 months', 'University dorm', 4, 'Probably yes', 'Minor disagreements'),
(7, 7, '9-12 months', 'University dorm', 4, 'Definitely yes', 'No we got along great'),
(8, 8, '<3 months', 'University dorm', 5, 'Maybe', 'No we got along great'),
(9, 9, '18+ months', 'Off-campus apartment', 3, 'Maybe', 'Some moderate conflicts'),
(10, 10, '<3 months', 'Off-campus apartment', 1, 'Definitely not', 'Some moderate conflicts'),
(11, 11, '9-12 months', 'University dorm', 4, 'Probably yes', 'Minor disagreements'),
(12, 12, '12-18 months', 'University dorm', 5, 'Definitely yes', 'Minor disagreements'),
(13, 13, '12-18 months', 'University dorm', 4, 'Definitely yes', 'No we got along great'),
(14, 14, '18+ months', 'Off-campus apartment', 2, 'Probably not', 'Some moderate conflicts'),
(15, 15, '9-12 months', 'University dorm', 1, 'Probably not', 'Significant conflicts'),
(16, 16, '18+ months', 'University dorm', 2, 'Definitely not', 'Some moderate conflicts'),
(17, 17, '<3 months', 'University dorm', 1, 'Definitely not', 'Some moderate conflicts'),
(18, 18, '12-18 months', 'Off-campus apartment', 5, 'Definitely yes', 'Minor disagreements'),
(19, 19, '18+ months', 'University dorm', 4, 'Probably yes', 'Minor disagreements'),
(20, 20, '9-12 months', 'Off-campus apartment', 2, 'Probably not', 'Some moderate conflicts'),
(21, 21, '18+ months', 'University dorm', 3, 'Maybe', 'Minor disagreements'),
(22, 22, '6-9 months', 'Off-campus apartment', 1, 'Definitely not', 'Significant conflicts'),
(23, 23, '6-9 months', 'Off-campus apartment', 2, 'Probably not', 'Significant conflicts'),
(24, 24, '<3 months', 'University dorm', 1, 'Definitely not', 'Significant conflicts'),
(25, 25, '3-6 months', 'University dorm', 5, 'Probably yes', 'No we got along great'),
(26, 26, '<3 months', 'Off-campus apartment', 1, 'Definitely not', 'Significant conflicts'),
(27, 27, '<3 months', 'Off-campus apartment', 4, 'Definitely yes', 'No we got along great'),
(28, 28, '12-18 months', 'Off-campus apartment', 1, 'Probably not', 'Minor disagreements'),
(29, 29, '3-6 months', 'University dorm', 2, 'Definitely not', 'Significant conflicts'),
(30, 30, '9-12 months', 'University dorm', 1, 'Probably not', 'Minor disagreements'),
(31, 31, '6-9 months', 'Off-campus apartment', 5, 'Definitely yes', 'No we got along great'),
(32, 32, '3-6 months', 'University dorm', 3, 'Probably not', 'Minor disagreements'),
(33, 33, '6-9 months', 'Off-campus apartment', 2, 'Probably not', 'Significant conflicts'),
(34, 34, '<3 months', 'Off-campus apartment', 5, 'Probably yes', 'No we got along great'),
(35, 35, '6-9 months', 'Off-campus apartment', 1, 'Definitely not', 'Some moderate conflicts'),
(36, 36, '9-12 months', 'University dorm', 2, 'Probably not', 'Some moderate conflicts');


-- TABLE 6: Roommate_Profiles (characteristics of past roommate)

CREATE TABLE Roommate_Profiles (
    experience_id INT PRIMARY KEY,
    roommate_major VARCHAR(100),
    roommate_year VARCHAR(50),
    cleanliness_level INT NOT NULL,
    noise_level INT NOT NULL,
    sleep_schedule VARCHAR(50) NOT NULL,
    social_level INT NOT NULL,
    guest_frequency VARCHAR(50) NOT NULL,
    shared_interest_level VARCHAR(50) NOT NULL,
    FOREIGN KEY (experience_id) REFERENCES Roommate_Experiences(experience_id)
);

INSERT INTO Roommate_Profiles (experience_id, roommate_major, roommate_year, cleanliness_level, noise_level, sleep_schedule, social_level, guest_frequency, shared_interest_level) VALUES 
(1, 'Nursing, undecided, international affairs', 'Senior', 4, 3, 'Normal (11pm-1am)', 3, 'Few times a month', 'Many shared interests'),
(2, 'Architecture', 'Junior', 1, 3, 'Very irregular', 3, 'Rarely/Never', 'None'),
(3, 'Computer Science', 'Junior', 1, 5, 'Night owl (after 1am)', 4, 'Multiple times/week', 'Few'),
(4, 'Bio', 'Junior', 5, 1, 'Early bird (before 11pm)', 4, 'Few times a month', 'Many shared interests'),
(5, 'Psychology', 'Sophomore', 3, 3, 'Normal (11pm-1am)', 3, 'Rarely/Never', 'Some'),
(6, 'Business & finance', 'Senior', 3, 3, 'Very irregular', 5, 'Few times a month', 'Some'),
(7, 'Communications and Design', 'Sophomore', 3, 4, 'Normal (11pm-1am)', 5, 'Weekly', 'Many shared interests'),
(8, 'Computer Science and Computer Engineering', 'Freshman', 5, 3, 'Normal (11pm-1am)', 5, 'Rarely/Never', 'None'),
(9, 'Cybersecurity', 'Senior', 3, 3, 'Early bird (before 11pm)', 4, 'Rarely/Never', 'Many shared interests'),
(10, 'Ms cs, ms project management', 'Grad Student', 3, 1, 'Early bird (before 11pm)', 3, 'Few times a month', 'None'),
(11, 'Education', 'Senior', 4, 5, 'Night owl (after 1am)', 5, 'Weekly', 'Many shared interests'),
(12, 'human physiology', 'Senior', 3, 2, 'Very irregular', 3, 'Rarely/Never', 'Many shared interests'),
(13, 'Biology', 'Senior', 3, 5, 'Early bird (before 11pm)', 2, 'Rarely/Never', 'Many shared interests'),
(14, 'Music', 'Freshman', 3, 1, 'Very irregular', 1, 'Weekly', 'Few shared interests'),
(15, 'Architecture', 'Graduate Student', 3, 2, 'Night owl (after 1am)', 4, 'Weekly', 'Few shared interests'),
(16, 'Engineering', 'Junior', 5, 1, 'Normal (11pm-1am)', 5, 'Weekly', 'Few shared interests'),
(17, 'International Business', 'Sophomore', 3, 2, 'Very irregular', 4, 'Few times a month', 'None'),
(18, 'Biology', 'Sophomore', 2, 3, 'Very irregular', 5, 'Weekly', 'Many shared interests'),
(19, 'Political Science', 'Grad Student', 2, 4, 'Normal (11pm-1am)', 5, 'Rarely/Never', 'Some shared interests'),
(20, 'Music', 'Junior', 4, 3, 'Normal (11pm-1am)', 3, 'Few times a month', 'None'),
(21, 'Health Science', 'Senior', 2, 2, 'Night owl (after 1am)', 4, 'Few times a month', 'Few shared interests'),
(22, 'Cybersecurity', 'Senior', 3, 4, 'Normal (11pm-1am)', 2, 'Multiple times/week', 'Few shared interests'),
(23, 'Cybersecurity', 'Junior', 1, 2, 'Night owl (after 1am)', 1, 'Few times a month', 'Few shared interests'),
(24, 'Nursing', 'Sophomore', 4, 1, 'Night owl (after 1am)', 4, 'Rarely/Never', 'Few shared interests'),
(25, 'Computer Science', 'Sophomore', 3, 3, 'Very irregular', 5, 'Rarely/Never', 'Many shared interests'),
(26, 'Marketing', 'Sophomore', 5, 5, 'Night owl (after 1am)', 4, 'Weekly', 'None'),
(27, 'Psychology', 'Graduate Student', 4, 3, 'Night owl (after 1am)', 1, 'Weekly', 'Many shared interests'),
(28, 'International Business', 'Senior', 1, 1, 'Normal (11pm-1am)', 5, 'Multiple times/week', 'Few shared interests'),
(29, 'Health Science', 'Grad Student', 1, 1, 'Normal (11pm-1am)', 5, 'Few times a month', 'Few shared interests'),
(30, 'Education', 'Senior', 1, 3, 'Very irregular', 5, 'Rarely/Never', 'Few shared interests'),
(31, 'Nursing', 'Grad Student', 3, 1, 'Night owl (after 1am)', 3, 'Multiple times/week', 'Many shared interests'),
(32, 'Computer Science', 'Senior', 5, 1, 'Very irregular', 3, 'Multiple times/week', 'Some shared interests'),
(33, 'Environmental Science', 'Junior', 1, 1, 'Early bird (before 11pm)', 5, 'Multiple times/week', 'Few shared interests'),
(34, 'Health Science', 'Grad Student', 3, 1, 'Early bird (before 11pm)', 1, 'Multiple times/week', 'Some shared interests'),
(35, 'Data Science', 'Sophomore', 5, 1, 'Night owl (after 1am)', 5, 'Multiple times/week', 'None'),
(36, 'Data Science', 'Freshman', 3, 3, 'Very irregular', 1, 'Weekly', 'None');



-- TABLE 7: Shared_Interests (tracks shared interests between responder and roommate)

CREATE TABLE Shared_Interests (
    experience_id INT NOT NULL,
    interest_id INT NOT NULL,
    PRIMARY KEY (experience_id, interest_id),
    FOREIGN KEY (experience_id) REFERENCES Roommate_Experiences(experience_id),
    FOREIGN KEY (interest_id) REFERENCES Interests(interest_id)
);

INSERT INTO Shared_Interests (experience_id, interest_id) VALUES 
-- Experience 1: Nadreah - no specific shared interests listed, skipping
-- Experience 2: Peyton - None
-- Experience 3: Corey - Few (not specified)
-- Experience 4: Sofia - Many shared interests, not specified
-- Experience 5: Abby
(5, 6), -- Music
-- Experience 6: Ryan
(6, 6), -- Music
-- Experience 7: Zaid
(7, 9), (7, 2), (7, 6), (7, 5), (7, 11), -- Fitness, art, music, going out, tv shows
-- Experience 8: Sam - None
-- Experience 9: Kiki
(9, 7), (9, 8), (9, 11), -- Skiing/hiking, reading, tv/movies
-- Experience 10: Sho - None
-- Experience 11: Wama
(11, 1), (11, 11), (11, 7), (11, 6), -- Education, movies, outdoor, music
-- Experience 12: Chanell
(12, 1), -- being health majors (Academic)
-- Experience 13: River
(13, 9), (13, 10), (13, 8), -- Sports/Fitness, Tech/Programming, Reading
-- Experience 14: Phoenix
(14, 4), -- Gaming
-- Experience 15: Quinn
(15, 3), (15, 2), -- Cooking, Arts/Creative
-- Experience 16: Skyler - Few shared interests, none specified
-- Experience 17: Charlie - None
-- Experience 18: Taylor
(18, 5), (18, 10), (18, 8), (18, 7), -- Going out/Parties, Tech/Programming, Reading, Outdoor activities
-- Experience 19: Miranda
(19, 5), (19, 11), -- Going out/Parties, TV/Movies
-- Experience 20: Joe - None
-- Experience 21: Reese
(21, 11), -- TV/Movies
-- Experience 22: Parker - Few shared interests, none specified
-- Experience 23: Trinity
(23, 11), (23, 3), -- TV/Movies, Cooking (Outdoor activities implied)
-- Experience 24: Nate - Few shared interests, none specified
-- Experience 25: Emerson
(25, 6), (25, 7), -- Music, Outdoor activities
-- Experience 26: Oscar
(26, 4), (26, 9), -- Gaming, Sports/Fitness
-- Experience 27: Drew
(27, 6), (27, 9), (27, 1), -- Music, Sports/Fitness, Academic
-- Experience 28: Ebony
(28, 3), (28, 7), -- Cooking, Outdoor activities
-- Experience 29: Morgan - Few shared interests, none specified
-- Experience 30: Casey
(30, 1), (30, 9), -- Academic, Sports/Fitness
-- Experience 31: Musa
(31, 2), (31, 3), (31, 5), (31, 11), -- Arts/Creative, Cooking, Going out/Parties, TV/Movies
-- Experience 32: Finley
(32, 2), (32, 8), (32, 5), -- Arts/Creative, Reading, Going out/Parties
-- Experience 33: Emerson - Few shared interests, none specified
-- Experience 34: Dakota
(34, 8), (34, 2), (34, 7), -- Reading, Arts/Creative, Outdoor activities
-- Experience 35: Alexander - None
-- Experience 36: Harper
(36, 5); -- Going out/Parties


-- TABLE 8: Compatibility_Ratings (alignment scores for compatibility)

CREATE TABLE Compatibility_Ratings (
    experience_id INT PRIMARY KEY,
    cleanliness_alignment INT NOT NULL,
    noise_alignment INT NOT NULL,
    sleep_alignment INT NOT NULL,
    social_alignment INT NOT NULL,
    boundary_respect INT NOT NULL,
    FOREIGN KEY (experience_id) REFERENCES Roommate_Experiences(experience_id)
);

INSERT INTO Compatibility_Ratings (experience_id, cleanliness_alignment, noise_alignment, sleep_alignment, social_alignment, boundary_respect) VALUES 
(1, 4, 4, 4, 4, 5),
(2, 1, 4, 2, 3, 4),
(3, 1, 2, 1, 4, 1),
(4, 3, 3, 4, 4, 5),
(5, 4, 3, 4, 2, 4),
(6, 3, 2, 3, 4, 5),
(7, 4, 3, 5, 3, 4),
(8, 4, 3, 3, 1, 5),
(9, 2, 4, 2, 3, 3),
(10, 4, 5, 5, 2, 1),
(11, 5, 4, 4, 4, 3),
(12, 4, 5, 3, 5, 4),
(13, 5, 5, 5, 4, 4),
(14, 3, 2, 3, 2, 2),
(15, 3, 2, 2, 3, 1),
(16, 3, 2, 3, 3, 2),
(17, 3, 2, 3, 2, 1),
(18, 4, 4, 5, 4, 5),
(19, 5, 4, 5, 5, 4),
(20, 3, 3, 3, 3, 2),
(21, 4, 4, 3, 5, 3),
(22, 3, 2, 2, 2, 1),
(23, 2, 3, 3, 1, 2),
(24, 3, 2, 3, 3, 1),
(25, 4, 4, 5, 5, 5),
(26, 3, 3, 3, 2, 1),
(27, 4, 5, 5, 5, 4),
(28, 3, 3, 3, 3, 1),
(29, 2, 3, 3, 1, 2),
(30, 1, 3, 2, 1, 1),
(31, 4, 4, 5, 4, 5),
(32, 3, 5, 2, 5, 3),
(33, 2, 2, 3, 1, 2),
(34, 5, 4, 5, 5, 5),
(35, 3, 3, 3, 2, 1),
(36, 3, 3, 3, 3, 2);


-- TABLE 9: Conflict_Types (list of all conflict)

CREATE TABLE Conflict_Types (
    conflict_type_id INT PRIMARY KEY AUTO_INCREMENT,
    conflict_name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Conflict_Types (conflict_type_id, conflict_name) VALUES 
(1, 'Bills/Rent'),
(2, 'Cleanliness/Chores'),
(3, 'Common spaces'),
(4, 'Food sharing'),
(5, 'Guests'),
(6, 'Noise'),
(7, 'Privacy/Boundaries'),
(8, 'Sleep schedules');


-- TABLE 10: Experience_Conflicts (links experiences to the conflicts)

CREATE TABLE Experience_Conflicts (
    experience_id INT NOT NULL,
    conflict_type_id INT NOT NULL,
    PRIMARY KEY (experience_id, conflict_type_id),
    FOREIGN KEY (experience_id) REFERENCES Roommate_Experiences(experience_id),
    FOREIGN KEY (conflict_type_id) REFERENCES Conflict_Types(conflict_type_id)
);

INSERT INTO Experience_Conflicts (experience_id, conflict_type_id) VALUES 
-- Experience 3: Corey - Significant conflicts
(3, 2), (3, 6), (3, 5), (3, 4), (3, 7), (3, 8), (3, 3),
-- Experience 5: Abby
(5, 7), (5, 3),
-- Experience 6: Ryan
(6, 6),
-- Experience 7: Zaid
(7, 6), (7, 5), (7, 7),
-- Experience 9: Kiki
(9, 2),
-- Experience 10: Sho
(10, 2), (10, 1), (10, 7),
-- Experience 11: Wama
(11, 2), (11, 5),
-- Experience 12: Chanell
(12, 7),
-- Experience 14: Phoenix
(14, 2), (14, 6),
-- Experience 15: Quinn
(15, 2), (15, 8), (15, 5),
-- Experience 16: Skyler
(16, 1), (16, 5), (16, 8),
-- Experience 17: Charlie
(17, 2),
-- Experience 19: Miranda
(19, 7), (19, 1),
-- Experience 20: Joe
(20, 8), (20, 7), (20, 2),
-- Experience 21: Reese
(21, 8),
-- Experience 22: Parker
(22, 6), (22, 2), (22, 5),
-- Experience 23: Trinity
(23, 7), (23, 6), (23, 2),
-- Experience 24: Nate
(24, 8),
-- Experience 26: Oscar
(26, 1),
-- Experience 28: Ebony
(28, 8),
-- Experience 29: Morgan
(29, 8),
-- Experience 30: Casey
(30, 6),
-- Experience 32: Finley
(32, 2), (32, 3), (32, 7),
-- Experience 33: Emerson
(33, 2), (33, 3),
-- Experience 35: Alexander
(35, 2), (35, 8), (35, 5),
-- Experience 36: Harper
(36, 2), (36, 6);


-- TABLE 11: Future_Preferences (what users want in their perfect future roommate)

CREATE TABLE Future_Preferences (
    user_id INT NOT NULL UNIQUE,
    priority_1 VARCHAR(100),
    priority_2 VARCHAR(100),
    priority_3 VARCHAR(100),
    additional_notes TEXT,
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Future_Preferences (user_id, priority_1, priority_2, priority_3, additional_notes) VALUES 
(1, 'Shared interests', 'Similar social habits', 'Good communication', 'N/a'),
(2, 'Similar cleanliness', 'Compatible noise levels', 'Similar sleep schedule', 'Let me have my gf over'),
(3, 'Similar cleanliness', 'Compatible noise levels', 'Similar sleep schedule', 'Respect'),
(4, 'Similar social habits', 'Financial responsibility', 'Good communication', 'Vibes of the space, does it feel open and welcoming or if you''re apprehensive to fully exist in the space'),
(5, 'Similar cleanliness', 'Similar social habits', 'Financial responsibility', 'Not a dickhead'),
(6, 'Compatible noise levels', 'Good communication', 'Respect for boundaries', 'N/A'),
(7, 'Similar cleanliness', 'Good communication', 'Respect for boundaries', 'Being able to take criticism and make changes rather than getting offended'),
(8, 'Similar cleanliness', 'Similar sleep schedule', 'Respect for boundaries', 'Nope'),
(9, 'Similar cleanliness', 'Shared interests', 'Respect for boundaries', 'no'),
(10, 'Similar cleanliness', 'Compatible noise levels', 'Similar sleep schedule', 'Bro just let me live in peace'),
(11, 'Similar cleanliness', 'Financial responsibility', 'Good communication', 'Their consideration for others'),
(12, 'Similar cleanliness', 'Compatible noise levels', 'Similar sleep schedule', 'sibling dynamics: older and younger siblings cant live together'),
(13, 'Financial responsibility', 'Similar cleanliness', 'Similar social habits', NULL),
(14, 'Similar social habits', 'Financial responsibility', 'Shared interests', NULL),
(15, 'Similar social habits', 'Similar cleanliness', 'Financial responsibility', NULL),
(16, 'Good communication', 'Respect for boundaries', 'Similar social habits', NULL),
(17, 'Respect for boundaries', 'Similar cleanliness', 'Compatible noise levels', NULL),
(18, 'Similar sleep schedule', 'Shared interests', 'Financial responsibility', NULL),
(19, 'Respect for boundaries', 'Financial responsibility', 'Shared interests', NULL),
(20, 'Financial responsibility', 'Similar sleep schedule', 'Good communication', NULL),
(21, 'Shared interests', 'Compatible noise levels', 'Respect for boundaries', NULL),
(22, 'Similar cleanliness', 'Respect for boundaries', 'Good communication', NULL),
(23, 'Good communication', 'Similar sleep schedule', 'Compatible noise levels', NULL),
(24, 'Similar sleep schedule', 'Similar cleanliness', 'Compatible noise levels', NULL),
(25, 'Compatible noise levels', 'Similar sleep schedule', 'Similar social habits', NULL),
(26, 'Good communication', 'Similar sleep schedule', 'Financial responsibility', NULL),
(27, 'Similar sleep schedule', 'Good communication', 'Similar social habits', NULL),
(28, 'Good communication', 'Similar cleanliness', 'Respect for boundaries', NULL),
(29, 'Similar social habits', 'Similar cleanliness', 'Similar sleep schedule', NULL),
(30, 'Similar cleanliness', 'Good communication', 'Shared interests', NULL),
(31, 'Respect for boundaries', 'Good communication', 'Compatible noise levels', NULL),
(32, 'Compatible noise levels', 'Similar social habits', 'Similar cleanliness', NULL),
(33, 'Respect for boundaries', 'Similar social habits', 'Similar sleep schedule', NULL),
(34, 'Similar cleanliness', 'Respect for boundaries', 'Shared interests', NULL),
(35, 'Financial responsibility', 'Similar sleep schedule', 'Good communication', NULL),
(36, 'Similar sleep schedule', 'Respect for boundaries', 'Shared interests', NULL);



-- Verifying the db
SELECT * FROM users;
SELECT * FROM roommate_experiences;
SELECT * FROM roommate_profiles;
SELECT * FROM conflict_types;
SELECT * FROM experience_conflicts;
SELECT * FROM compatibility_ratings;

SHOW TABLES;