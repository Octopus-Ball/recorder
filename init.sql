CREATE TABLE users (
    id INT AUTO_INCREMENT,
    group_id INT NOT NULL,
    name CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    phone VARCHAR(15) NOT NULL,
    type VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    last_login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE group (
    id INT AUTO_INCREMENT,
    name CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE bill_type (
    id INT AUTO_INCREMENT,
    name CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    belong INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE bill (
    id INT AUTO_INCREMENT,
    uid INT NOT NULL,
    group_id INT,
    tid INT NOT NULL,
    amount DECIMAL(15, 5),
    note CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    image VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO users (name, phone, type, password) 
VALUES ('张渊', '17611038211', 'admin' '123456');