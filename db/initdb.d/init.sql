CREATE TABLE IF NOT EXISTS log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hora TIME NOT NULL, 
    actividad VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    imagen VARCHAR(255) NOT NULL
);

INSERT INTO log (hora, actividad, estado, imagen) VALUES 
('14:10:00', 'Contenedores corriendo', 'Completado', 'ps.png');
('14:11:00', 'Todos los contenedores', 'Completado', 'ps-a.png');
('14:12:00', 'Imagenes en la maquina', 'Completado', 'imagenes.png');
('14:13:00', 'Volumenes', 'Completado', 'volumenes.png');
('14:14:00', 'Logs del contenedor web', 'Completado', 'logs.png');
('14:15:00', 'Ping entre servicios', 'Completado', 'ps.png');
('14:16:00', 'Healthchecks', 'Completado', 'ps.png');
('14:17:00', 'Web funcionando', 'Completado', 'ps.png');
('14:18:00', 'Tabla Log', 'Completado', 'ps.png');