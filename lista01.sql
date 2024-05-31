create database listamayck_22c;
use listamayck_22c;

CREATE TABLE Livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_publicacao INT,
    disponivel BOOLEAN,
    categoria VARCHAR(100),
    isbn VARCHAR(20),
    editora VARCHAR(100),
    quantidade_paginas INT,
    idioma VARCHAR(50)
);

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, true, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES
    ('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, true, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
    ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, true, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
    ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, true, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');


INSERT INTO Livros (titulo, categoria, detalhes_ficticios)
VALUES ('Livro Histórico Fictício', 'História', 'Detalhes fictícios sobre o livro.');

UPDATE Livros SET disponibilidade = false WHERE ano_publicacao < 2000;
UPDATE Livros SET editora = 'Plume Books' WHERE titulo = '1984';
UPDATE Livros SET idioma = 'Inglês' WHERE editora = 'Penguin Books';
UPDATE Livros SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)' WHERE isbn = '978-0439708180';
DELETE FROM Livros WHERE categoria = 'Terror';
DELETE FROM Livros WHERE idioma = 'Francês' AND ano_publicacao < 1970;
DELETE FROM Livros WHERE titulo = 'As Crônicas de Nárnia';
DELETE FROM Livros WHERE editora = 'Penguin Books';
SELECT * FROM Livros WHERE paginas > 500;
