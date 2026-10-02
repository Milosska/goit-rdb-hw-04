use LibraryManagement;

INSERT INTO authors (author_name)
VALUES 
    ('Stephen King'),
    ('Agatha Christie'),
    ('Bram Stoker');


INSERT INTO genres (genre_name)
VALUES 
    ('horror'),
    ('fantasy'),
    ('mystery');

INSERT INTO books (book_id, title, publication_year, author_id, genre_id)
VALUES (1, 'Carrie', 1974, 1, 1),
       (2, 'The Gunslinger', 1982, 1, 3),
       (3, 'The Shining', 1977, 1, 1),
       (4, 'And Then There Were None', 1939, 2, 3),
       (5, 'Murder on the Orient Express', 1934, 2, 3),
       (6, 'Dracula', 1901, 3, 2);
       
INSERT INTO users (username, email)
VALUES 
    ('HorrorReader_2000', 'fa06d101c226@maxxspace.com'),
    ('lady_lullaby', 'vamig57630@aminavin.com');
    
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES 
    (1, 1, '2026-09-30', '2026-10-30'),
    (4, 2, '2026-10-01', '2026-11-01'),
    (5, 2, '2026-10-01', '2026-11-01');  
    
SELECT borrow_id, book_id, user_id, borrow_date, return_date
FROM borrowed_books;
