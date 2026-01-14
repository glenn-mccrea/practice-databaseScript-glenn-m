START TRANSACTION;

DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT
);

CREATE TABLE items (
    id INT PRIMARY KEY,
    user_id INT,
    item_id INT,
    item_weight INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE skills (
    id INT PRIMARY KEY,
    user_id INT,
    skill_name VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert data
INSERT INTO users (id, username, age) VALUES 
(1, 'tomsmith', 45),
(2, 'alicejones', 24),
(3, 'bethstone', 28);

INSERT INTO items (id, user_id, item_id, item_weight) VALUES
(1, 1, 345, 63),
(2, 1, 763, 22),
(3, 2, 4, 45),
(4, 3, 2, 1),
(5, 2, 345, 7);

INSERT INTO skills (id, user_id, skill_name) VALUES
(1, 1, 'jump'),
(2, 2, 'sprint'),
(3, 3, 'handstand');

SELECT * FROM users;
SELECT * FROM items;
SELECT * FROM skills;

COMMIT;

