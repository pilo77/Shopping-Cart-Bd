-- Insertar categorias de ejemplo
INSERT INTO inventory.category (name, description, state) VALUES
('Electronicos', 'Dispositivos y accesorios electronicos', 'ACTIVE'),
('Ropa', 'Prendas de vestir y moda', 'ACTIVE'),
('Libros', 'Libros fisicos y material de lectura', 'ACTIVE'),
('Hogar y Jardin', 'Productos para el hogar y el jardin', 'ACTIVE'),
('Deportes', 'Equipo deportivo y articulos para actividades al aire libre', 'ACTIVE');

-- Insertar productos de ejemplo
INSERT INTO inventory.product (name, description, price, category_id, state) VALUES
('Auriculares Inalambricos', 'Auriculares inalambricos con cancelacion de ruido y 30 horas de bateria', 199.99, (SELECT id FROM inventory.category WHERE name='Electronicos'), 'ACTIVE'),
('Cable USB-C', 'Cable USB-C de 6 pies para carga y datos', 14.99, (SELECT id FROM inventory.category WHERE name='Electronicos'), 'ACTIVE'),
('Webcam 4K', 'Webcam 4K ideal para streaming y videollamadas', 79.99, (SELECT id FROM inventory.category WHERE name='Electronicos'), 'ACTIVE'),
('Soporte para Laptop', 'Soporte ajustable de aluminio para mejor ergonomia', 34.99, (SELECT id FROM inventory.category WHERE name='Electronicos'), 'ACTIVE'),
('Camiseta de Algodon', 'Camiseta comoda 100% algodon en varios colores', 19.99, (SELECT id FROM inventory.category WHERE name='Ropa'), 'ACTIVE'),
('Jeans de Mezclilla', 'Jeans clasicos de mezclilla con ajuste perfecto', 59.99, (SELECT id FROM inventory.category WHERE name='Ropa'), 'ACTIVE'),
('Chaqueta de Invierno', 'Chaqueta impermeable con forro termico', 129.99, (SELECT id FROM inventory.category WHERE name='Ropa'), 'ACTIVE'),
('Zapatos para Correr', 'Zapatos ligeros para correr con amortiguacion avanzada', 89.99, (SELECT id FROM inventory.category WHERE name='Ropa'), 'ACTIVE'),
('Guia de JavaScript', 'Guia completa de desarrollo moderno con JavaScript', 39.99, (SELECT id FROM inventory.category WHERE name='Libros'), 'ACTIVE'),
('Recetario de Python', 'Recetas practicas y soluciones para programacion en Python', 34.99, (SELECT id FROM inventory.category WHERE name='Libros'), 'ACTIVE'),
('Fundamentos de Diseno Web', 'Aprende los conceptos basicos de diseno web responsivo', 29.99, (SELECT id FROM inventory.category WHERE name='Libros'), 'ACTIVE'),
('Lampara de Escritorio LED', 'Lampara LED eficiente con brillo ajustable', 44.99, (SELECT id FROM inventory.category WHERE name='Hogar y Jardin'), 'ACTIVE'),
('Juego de Macetas', 'Juego de 3 macetas de ceramica con drenaje', 24.99, (SELECT id FROM inventory.category WHERE name='Hogar y Jardin'), 'ACTIVE'),
('Cafetera', 'Cafetera programable para 12 tazas', 69.99, (SELECT id FROM inventory.category WHERE name='Hogar y Jardin'), 'ACTIVE'),
('Esterilla de Yoga', 'Esterilla antideslizante con correa de transporte', 27.99, (SELECT id FROM inventory.category WHERE name='Deportes'), 'ACTIVE'),
('Botella Termica', 'Botella aislante que mantiene liquidos frios o calientes', 35.99, (SELECT id FROM inventory.category WHERE name='Deportes'), 'ACTIVE'),
('Casco para Bicicleta', 'Casco certificado para bicicleta con ventilacion', 54.99, (SELECT id FROM inventory.category WHERE name='Deportes'), 'ACTIVE');

-- Insertar cantidades de inventario
INSERT INTO inventory.inventory (product_id, quantity, state) VALUES
((SELECT id FROM inventory.product WHERE name='Auriculares Inalambricos'), 50, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Cable USB-C'), 200, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Webcam 4K'), 30, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Soporte para Laptop'), 75, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Camiseta de Algodon'), 150, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Jeans de Mezclilla'), 80, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Chaqueta de Invierno'), 40, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Zapatos para Correr'), 60, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Guia de JavaScript'), 25, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Recetario de Python'), 20, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Fundamentos de Diseno Web'), 30, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Lampara de Escritorio LED'), 45, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Juego de Macetas'), 90, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Cafetera'), 35, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Esterilla de Yoga'), 55, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Botella Termica'), 100, 'ACTIVE'),
((SELECT id FROM inventory.product WHERE name='Casco para Bicicleta'), 42, 'ACTIVE');
