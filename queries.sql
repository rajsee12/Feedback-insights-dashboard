-- queries.sql

-- Get average rating of feedback
SELECT AVG(rating) AS average_rating FROM feedback;

-- Get top-rated feedback
SELECT user_name, rating, comment FROM feedback
WHERE rating = 5;

-- Count feedback by category
SELECT category, COUNT(*) AS feedback_count FROM feedback
GROUP BY category;
