DECLARE @book_id UNIQUEIDENTIFIER;
DECLARE @counter INT; SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 1, 'The Millionaires Mind', 'A Motivational bussiness minded.', 'Thomas J. Stanley', '../../../resources/assets/defaults/books/The Millionaires Mind.jpg', 'Open Road Integrated Media', '2010-12-03', '9780795314834', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 2, 'The Hobbit', 'A fantasy tale in which a hobbit sets out to regain a stolen treasure called the rings.', 'J.R.R. Tolkien', '../../../resources/assets/defaults/books/The Hobbit.jpg', 'HMH Books for Young Readers', '2002-02-28', '9780618260300', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 3, 'The Lord of the Rings', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them', 'J.R.R. Tolkien', '../../../resources/assets/defaults/books/The Lord of the Rings.jpg', 'Mariner Books', '2005-06-25', '9780618640157', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 4, 'The Call of Cthulhu and Other Weird Stories', 'The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents.', 'H. P. Lovecraft', '../../../resources/assets/defaults/books/The Call of Cthulhu and Other Weird Stories.jpg', 'Penguin Classics', '1999-03-09', '9780141182346', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 5, 'The Adventures of Sherlock Holmes', 'matching of the wits of a clever man against the dumb resistance of the secrecy of inanimate things, which results in the triumph of the human intelligence.', 'Arthur Conan Doyle', '../../../resources/assets/defaults/books/The Adventures of Sherlock Holmes.jpg', 'Oxford University Press', '1998-10-22', '9780192835086', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 6, 'The Chronicles of Narnia', 'A series of fantasy novels set in the magical land of Narnia.', 'C.S. Lewis', '../../../resources/assets/defaults/books/The Chronicles of Narnia.jpg', 'HarperCollins', '2002-10-01', '9780064471190', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 7, 'The Count of Monte Cristo', 'An adventure novel about a man seeking revenge against those who wronged him.', 'Alexandre Dumas', '../../../resources/assets/defaults/books/The Count of Monte Cristo.jpg', 'Penguin Classics', '2003-08-28', '9780140449266', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 8, 'The Mysterious Island', 'The book tells the adventures of five American prisoners of war on an uncharted island in the South Pacific.', 'Jules Verne', '../../../resources/assets/defaults/books/The Mysterious Island.jpg', 'Modern Library', '2004-08-28', '9780812972122', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 9, 'The Strange Case of Dr. Jekyll and Mr. Hyde', 'The gripping novel of a London lawyer who investigates strange occurrences surrounding his old friend, Dr. Henry Jekyll, and the misanthropic Mr. Edward Hyde.', 'Robert Louis Stevenson', '../../../resources/assets/defaults/books/The Strange Case of Dr. Jekyll and Mr. Hyde.jpg', 'Modern Library', '2004-08-28', '9780812972122', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 10, 'The Story of My Life', ' This is the autobiography written by the amazing deafblind woman Helen Keller at the early age of 22.', 'Helen Keller', '../../../resources/assets/defaults/books/The Story of My Life.jpg', 'Penguin Classics', '2001-05-01', '9780140439151', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 11, 'The Adventures of Huckleberry Finn', 'The drifting journey of Huck and his friend Jim, a runaway slave, down the Mississippi River on their raft may be one of the most enduring images of escape and freedom in all of American literature.', 'Mark Twain', '../../../resources/assets/defaults/books/The Adventures of Huckleberry Finn.jpg', 'Penguin Classics', '2002-12-31', '9780140439151', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 12, 'Frankenstein', 'A Gothic novel about a scientist who creates a monster.', 'Mary Shelley', '../../../resources/assets/defaults/books/Frankenstein.jpg', 'Dover Publications', '1818-01-01', '9780486282114', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 13, 'Hunger Games', 'A dystopian novel about a young girl fighting for survival in a televised competition.', 'Suzanne Collins', '../../../resources/assets/defaults/books/Hunger Games.jpg', 'Scholastic Press', '2008-09-14', '9780439023481', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 14, 'The Book Thief', 'A story about a girl who steals books during World War II.', 'Markus Zusak', '../../../resources/assets/defaults/books/The Book Thief.jpg', 'Knopf Books for Young Readers', '2007-03-14', '9780375842207', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 15, 'The Da Vinci Code', 'A thriller involving a symbologist and a conspiracy involving the Holy Grail.', 'Dan Brown', '../../../resources/assets/defaults/books/The Da Vinci Code.jpg', 'Corgi', '2018-04-01', '9780307474278', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 16, 'The Odyssey', 'An epic poem about the hero Odysseus and his journey home.', 'Homer', '../../../resources/assets/defaults/books/The Odyssey.jpg', 'Oxford University Press', '2008-09-10', '9780199536788', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 1, 'The Notebook', 'A romantic novel about a couple who fall in love in the 1940s.', 'Nicholas Sparks', '../../../resources/assets/defaults/books/The Notebook.jpg', 'Grand Central Publishing', '2014-10-01', '9781455582877', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 2, 'The Maze Runner', 'A dystopian novel about a group of teenagers trapped in a deadly maze.', 'James Dashner', '../../../resources/assets/defaults/books/The Maze Runner.jpg', 'Delacorte Press', '2010-10-06', '9780385737951', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 3, 'Gone Girl', 'A psychological thriller about a husband searching for his missing wife.', 'Gillian Flynn', '../../../resources/assets/defaults/books/Gone Girl.jpg', 'Ballantine Books', '2012-06-05', '9780307588364', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, author, cover, publisher, publication_date, isbn, added_on) VALUES (@book_id, 4, 'The Kite Runner', 'A story of friendship and redemption set against the backdrop of Afghanistan.', 'Khaled Hosseini', '../../../resources/assets/defaults/books/The Kite Runner.jpg', 'Riverhead Books', '2013-05-29', '9781594632204', '2023-06-16');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END
