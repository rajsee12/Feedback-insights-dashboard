-- schema.sql

-- Create feedback table
CREATE TABLE feedback (
    id INT PRIMARY KEY,
    user_name VARCHAR(100),
    category VARCHAR(50),
    rating INT,
    comment TEXT,
    feedback_date DATE
);
