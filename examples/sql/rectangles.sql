DROP TABLE IF EXISTS rectangles;

CREATE TABLE rectangles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    -- top left corner coordinates
    x REAL NOT NULL,
    y REAL NOT NULL,
    width REAL NOT NULL,
    height REAL NOT NULL,
    color TEXT -- css style color
); 

INSERT INTO rectangles (x, y, width, height, color) VALUES (0, 4, 10, 5, 'red');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (1, 1, 7, 7, 'blue');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (8, 2, 6, 4, 'green');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (3, 3, 8, 8, 'yellow');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (4, 1, 12, 3, 'red'); 
INSERT INTO rectangles (x, y, width, height, color) VALUES (5, 5, 15, 10, '#aabbcc');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (6, 6, 9, 14, '#ff5733');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (7, 7, 5.5, 5, 'purple');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (8, 8, 20, 10, '#123456');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (9, 9, 10, 15, 'orange');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (10, 10, 7.2, 2.5, '#654321');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (2, 8, 4, 12, 'pink');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (12, 12, 25, 5, '#abcdef');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (13, 13, 3, 3.4, '#000000');  
INSERT INTO rectangles (x, y, width, height, color) VALUES (7, 14, 18, 18, '#ffffff');
INSERT INTO rectangles (x, y, width, height, color) VALUES (2, 3, 9, 9, '#ffffff0');
INSERT INTO rectangles (x, y, width, height, color) VALUES (1, 4, 4, 4, NULL);

