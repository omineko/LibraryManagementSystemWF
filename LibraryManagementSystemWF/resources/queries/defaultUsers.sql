DECLARE @member_id UNIQUEIDENTIFIER;

SET @member_id = NEWID();

INSERT INTO members (
	first_name,
	last_name,
	email,
	phone,
	address,
	member_id
) VALUES (
	'Shello Luis',
	'Roxas',
	'SheRoxas@gmail.com',
	'09113456780',
	'1049 Malhacan St.',
	@member_id
);

INSERT INTO users (username, password_hash, profile_picture, role_id, member_id) VALUES (
	'admin2',
	'$argon2id$v=19$m=65536,t=3,p=1$3wKJEyw8CQjpQHN2DjH7qg$uRD8wwKE4DTmjFVgunfEcH+zbdJOzi7n1/03Le70lRo',
	'../../../resources/assets/defaults/users/Admin.png',
	1,
	@member_id
);

SET @member_id = NEWID();

INSERT INTO members (
	first_name,
	last_name,
	email,
	phone,
	address,
	member_id
) VALUES (
	'Juan',
	'Dela Cruz',
	'juandc@mail.co.uk',
	'09123456789',
	'102 Melbourne St.',
	@member_id
);

INSERT INTO users (username, password_hash, profile_picture, role_id, member_id) VALUES (
	'librarian',
	'$argon2id$v=19$m=65536,t=3,p=1$3wKJEyw8CQjpQHN2DjH7qg$uRD8wwKE4DTmjFVgunfEcH+zbdJOzi7n1/03Le70lRo',
	'../../../resources/assets/defaults/users/librarian.png',
	3,
	@member_id
);

SET @member_id = NEWID();

INSERT INTO members (
	first_name,
	last_name,
	email,
	phone,
	address,
	member_id
) VALUES (
	'Jameson',
	'Teodore',
	'jTeodore@gmail.com',
	'09987654321',
	'1023 Santolan St.',
	@member_id
);

INSERT INTO users (username, password_hash, profile_picture, role_id, member_id) VALUES (
	'User1',
	'$argon2id$v=19$m=65536,t=3,p=1$3wKJEyw8CQjpQHN2DjH7qg$uRD8wwKE4DTmjFVgunfEcH+zbdJOzi7n1/03Le70lRo',
	'../../../resources/assets/defaults/users/user1.jpg',
	2,
	@member_id
);

SET @member_id = NEWID();

INSERT INTO members (
	first_name,
	last_name,
	email,
	phone,
	address,
	member_id
) VALUES (
	'Jamesmar',
	'Martin',
	'jmartin@gmail.com',
	'09192365102',
	'0018 Payatas St.',
	@member_id
);

INSERT INTO users (username, password_hash, profile_picture, role_id, member_id) VALUES (
	'User2',
	'$argon2id$v=19$m=65536,t=3,p=1$3wKJEyw8CQjpQHN2DjH7qg$uRD8wwKE4DTmjFVgunfEcH+zbdJOzi7n1/03Le70lRo',
	'../../../resources/assets/defaults/users/User2.jpg',
	2,
	@member_id
);
