DROP TABLE IF EXISTS "user";
CREATE TABLE user (
	id INTEGER NOT NULL,
	username VARCHAR(20) NOT NULL,
	email VARCHAR(120) NOT NULL,
	image_file VARCHAR(20) NOT NULL,
	password VARCHAR(60) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (username),
	UNIQUE (email)
);

INSERT INTO "user" ("id", "username", "email", "image_file", "password") VALUES ('1', 'proton', 'coop@gmail.com', 'default.jpg', '$2b$12$.yEonIEzE4moVFYc0PnvrOnxAuvwqwvIv7R55c4FeWzhp52X/ymq.'),
('2', 'rhage', 'rhage@gmail.com', 'default.jpg', '$2b$12$A0qyJWw8fJhPrLdHbTwG9ODXfpPRHWeC48o.QnMKZVWnScWjPfkZi'),
('3', 'Cooproton', 'bolaji0123@yahoo.com', '8dfbbcae27c92476.jpeg', '$2b$12$2pmYe.VplzPiHUP.i6Vyb.IJJPeDqsOmW6EbqL6ox/zh.DdRzRxVS'),
('4', 'iAmao', 'iamao@gmail.com', 'b7a6ee8a1d02e871.jpg', '$2b$12$0g2F8dndrI2E6pzvhEmJ2es2Fi2n0ilSyVptJ9/KJ1g/n2TSrZVIK'),
('5', 'hiel', 'hiel@gmail.com', 'default.jpg', '$2b$12$CCi2iYB14ft5Ux9OiVEI1erFlU1LtUVXwvitd4iWtXH7Qd5u9yRi.'),
('6', 'bolaji2001', 'bolajiO@gmail.com', '053ea829ddff13d2.jpeg', '$2b$12$tzovJzLCif4IJQXkqr4YJOEygQ5OCi0ItDtStkYtvk/YGTuXun8Ue');
