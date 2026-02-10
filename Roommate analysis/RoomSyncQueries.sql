USE roomsync;

#Question 1: How does overall lifestyle alignment affect roommate satisfaction?
SELECT 
    re.overall_satisfaction,
    COUNT(*) AS num_experiences,
    AVG(cr.cleanliness_alignment) AS cleanliness_alignment,
    AVG(cr.noise_alignment) AS noise_alignment,
    AVG(cr.sleep_alignment) AS sleep_alignment,
    AVG(cr.social_alignment) AS social_alignment,
    AVG(cr.boundary_respect) AS boundary_respect
FROM Roommate_Experiences re
JOIN Compatibility_Ratings cr ON re.experience_id = cr.experience_id
JOIN Users u ON re.user_id = u.user_id
JOIN User_Lifestyle ul ON u.user_id = ul.user_id
GROUP BY re.overall_satisfaction
ORDER BY re.overall_satisfaction DESC;

# Question 2: Does having more shared interests directly correlate with higher satisfaction?
SELECT 
    rp.shared_interest_level,
    AVG(re.overall_satisfaction) AS satisfaction,
    COUNT(*) AS num_experiences,
    AVG(cr.cleanliness_alignment) AS cleanliness_alignment,
    AVG(cr.sleep_alignment) AS sleep_alignment,
    AVG(cr.social_alignment) AS social_alignment,
    AVG(cr.boundary_respect) AS boundary_respect
FROM Roommate_Experiences re
JOIN Roommate_Profiles rp ON re.experience_id = rp.experience_id
JOIN Compatibility_Ratings cr ON re.experience_id = cr.experience_id
GROUP BY rp.shared_interest_level
ORDER BY satisfaction DESC;


# QUESTION 3 How does social interaction affect the quality of cohabitation, both between roommates and from guests invited over?
SELECT guest_frequency, AVG(social_level) as avg_social_level
FROM roommate_profiles
GROUP BY guest_frequency
ORDER BY avg_social_level DESC;

SELECT p.social_level, AVG(e.overall_satisfaction) as avg_satisfaction
FROM roommate_experiences as e
	JOIN roommate_profiles as p ON e.experience_id = p.experience_id
GROUP BY p.social_level
ORDER BY p.social_level DESC;

SELECT p.guest_frequency, AVG(e.overall_satisfaction) as avg_satisfaction
FROM roommate_experiences as e
	JOIN roommate_profiles as p ON e.experience_id = p.experience_id
GROUP BY p.guest_frequency
ORDER BY avg_satisfaction DESC;

#QUESTION 4 What conflict types are most common and how do they affect average satisfaction?
SELECT t.conflict_name, COUNT(c.conflict_type_id) as num_of_conflict, AVG(e.overall_satisfaction) as avg_satisfaction_with_conflict,
	MIN(e.overall_satisfaction) as lowest_satisfaction, MAX(e.overall_satisfaction) as highest_satisfaction
FROM experience_conflicts as c
	JOIN conflict_types as t ON t.conflict_type_id = c.conflict_type_id
    JOIN roommate_experiences as e ON e.experience_id = c.experience_id
GROUP BY t.conflict_name
ORDER BY num_of_conflict DESC;

#QUESTION 5 How did compatibility ratings affect roommate satisfaction?
SELECT cr.cleanliness_alignment, AVG(e.overall_satisfaction) as avg_satisfaction, COUNT(e.overall_satisfaction) as num_experiences
FROM compatibility_ratings as cr
	JOIN roommate_experiences as e ON e.experience_id = cr.experience_id
GROUP BY cr.cleanliness_alignment
ORDER BY cr.cleanliness_alignment DESC;

SELECT cr.noise_alignment, AVG(e.overall_satisfaction) as avg_satisfaction, COUNT(e.overall_satisfaction) as num_experiences
FROM compatibility_ratings as cr
	JOIN roommate_experiences as e ON e.experience_id = cr.experience_id
GROUP BY cr.noise_alignment
ORDER BY cr.noise_alignment DESC;

SELECT cr.sleep_alignment, AVG(e.overall_satisfaction) as avg_satisfaction, COUNT(e.overall_satisfaction) as num_experiences
FROM compatibility_ratings as cr
	JOIN roommate_experiences as e ON e.experience_id = cr.experience_id
GROUP BY cr.sleep_alignment
ORDER BY cr.sleep_alignment DESC;

SELECT cr.social_alignment, AVG(e.overall_satisfaction) as avg_satisfaction, COUNT(e.overall_satisfaction) as num_experiences
FROM compatibility_ratings as cr
	JOIN roommate_experiences as e ON e.experience_id = cr.experience_id
GROUP BY cr.social_alignment
ORDER BY cr.social_alignment DESC;

SELECT cr.boundary_respect, AVG(e.overall_satisfaction) as avg_satisfaction, COUNT(e.overall_satisfaction) as num_experiences
FROM compatibility_ratings as cr
	JOIN roommate_experiences as e ON e.experience_id = cr.experience_id
GROUP BY cr.boundary_respect
ORDER BY cr.boundary_respect DESC;

#QUESTION 6 Duration and Housing Type Effect
#Not included in report due to space constraints
SELECT 
    re.duration,
    re.housing_type,
    AVG(re.overall_satisfaction) as avg_satisfaction,
    COUNT(*) as experience_count
FROM Roommate_Experiences re
GROUP BY re.duration, re.housing_type
HAVING experience_count > 1
ORDER BY avg_satisfaction DESC;


#QUESTION 7 How important is respecting each other's boundaries as roommates?
SELECT 
    cr.boundary_respect,
    AVG(re.overall_satisfaction) as avg_satisfaction,
    COUNT(*) as experience_count,
    AVG(cr.social_alignment) as avg_social_alignment
FROM Roommate_Experiences re
JOIN Compatibility_Ratings cr ON re.experience_id = cr.experience_id
GROUP BY cr.boundary_respect
ORDER BY cr.boundary_respect DESC;

#QUESTION 8 Previous Experience Influence
#Not included in report due to space constraints
SELECT 
    u.num_previous_roommates,
    AVG(re.overall_satisfaction) as avg_satisfaction
FROM Roommate_Experiences re
JOIN Users u ON re.user_id = u.user_id
GROUP BY u.num_previous_roommates
ORDER BY u.num_previous_roommates;

#QUESTION 9 What are the number 1 priorities among respondants for future roommates?
SELECT 
    fp.priority_1,
    COUNT(*) as preference_count,
    AVG(re.overall_satisfaction) as avg_historical_satisfaction
FROM Future_Preferences fp
JOIN Users u ON fp.user_id = u.user_id
JOIN Roommate_Experiences re ON u.user_id = re.user_id
GROUP BY fp.priority_1
ORDER BY preference_count DESC;

