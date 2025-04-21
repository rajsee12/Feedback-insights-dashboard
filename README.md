# Feedback Insights Dashboard

A SQL-based project to analyze and visualize structured user feedback. This project demonstrates hands-on SQL skills in schema design, data filtering, and feedback analysis using real-world inspired queries.

##  Features
- Store user feedback with ratings and categories.
- SQL queries for insights (e.g., average ratings, top issues).
- Sample data and schema included.
- Designed for learning and real-world application.

##  Use Case
Ideal for businesses or educational platforms to evaluate customer/student feedback and improve services based on data insights.

##  Database Schema

```sql
CREATE TABLE feedback (
    id INT PRIMARY KEY,
    user_name VARCHAR(100),
    category VARCHAR(50),
    rating INT,
    comment TEXT,
    feedback_date DATE
);

##  Sample SQL Queries

```sql
-- 1. Average rating per category
SELECT category, ROUND(AVG(rating), 2) AS avg_rating
FROM feedback
GROUP BY category;

-- 2. Count of feedback entries per rating
SELECT rating, COUNT(*) AS total_feedbacks
FROM feedback
GROUP BY rating;

-- 3. Feedbacks with low ratings
SELECT * FROM feedback
WHERE rating <= 2;

-- 4. Recent feedbacks
SELECT user_name, category, comment
FROM feedback
ORDER BY feedback_date DESC
LIMIT 5;

##  Sample Data

```sql
INSERT INTO feedback (id, user_name, category, rating, comment, feedback_date) VALUES
(1, 'Aanya', 'UI', 4, 'The UI is clean but could use more color.', '2024-12-01'),
(2, 'Rohan', 'Performance', 2, 'App loads slowly during peak hours.', '2024-12-03'),
(3, 'Meera', 'Features', 5, 'Loved the new features added this month!', '2024-12-05'),
(4, 'Dev', 'Support', 1, 'Customer support was not responsive.', '2024-12-06'),
(5, 'Tina', 'UI', 3, 'Needs better font contrast.', '2024-12-07');

##  Optional Future Enhancements
- Integrate with Google Forms or frontend forms for real-time data input.
- Perform sentiment analysis on feedback comments.
- Filter feedback by date range or user for customized reporting.
- Export dashboard as a PDF or CSV report.
