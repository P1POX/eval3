CREATE TABLE IF NOT EXISTS log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hora TIME NOT NULL, 
    actividad VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    imagen VARCHAR(255) NOT NULL
);

INSERT INTO log (hora, actividad, estado, imagen) VALUES 
('09:49:00', 'Estructura repositorio', 'Completado', 'esrep.png');
