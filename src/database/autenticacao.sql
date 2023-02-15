-- Active: 1676480732094@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

--senhas plain text: fulano: fulano123 beltrana: beltrana00 astrodev: astrodev99
INSERT INTO users (id, name, email, password, role)
VALUES
	("u001", "Fulano", "fulano@email.com", "$2a$12$4eHQpu0pCgbwFgEiHDYGc.zxn05K2IQCitUYp0zkwrz4ZQHfUbovK", "NORMAL"),
	("u002", "Beltrana", "beltrana@email.com", "$2a$12$ycrygma7dl27bOkYgEFDcuNWnguidk0j.72uJMW9uJk3vILtsQSLi", "NORMAL"),
	("u003", "Astrodev", "astrodev@email.com", "$2a$12$s3mawphriQPHib/AHqw93.hqtQV9EBtpZz8bOPhhSSmCA5CXkjuL6", "ADMIN");

DROP Table users;

SELECT * FROM users;