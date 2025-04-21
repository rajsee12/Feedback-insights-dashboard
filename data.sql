-- data.sql

-- Insert sample feedback data
INSERT INTO feedback (id, user_name, category, rating, comment, feedback_date)
VALUES
(1, 'Alice', 'Product', 4, 'Great product, but could improve quality.', '2025-04-21'),
(2, 'Bob', 'Service', 5, 'Excellent service! Keep it up.', '2025-04-20'),
(3, 'Charlie', 'Product', 3, 'Good, but too expensive for the features.', '2025-04-19');
