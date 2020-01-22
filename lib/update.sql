UPDATE Characters SET species = "Martian" WHERE id = (SELECT MAX(id) FROM Characters);
