
/*1. Напишіть SQL команду, за допомогою якої можна:
1.1 вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
1.2 вибрати тільки стовпчики name, phone з таблиці shippers,
та перевірте правильність її виконання в MySQL Workbench.*/

-- 1.1 вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
SELECT * FROM `goit-rdb-hw-03`.employees;

-- 1.2 вибрати тільки стовпчики name, phone з таблиці shippers;
SELECT name, phone
FROM `goit-rdb-hw-03`.shippers;

/*2. Напишіть SQL команду, за допомогою якої можна знайти середнє, максимальне та мінімальне значення стовпчика price таблички 
products, та перевірте правильність її виконання в MySQL Workbench*.**/

SELECT AVG(price) AS avg_price, MAX(price) AS max_price, MIN(price) AS min_price
FROM `goit-rdb-hw-03`.products;


/*3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення колонок category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків. Перевірте правильність виконання 
команди в MySQL Workbench.*/

SELECT DISTINCT category_id, price
FROM `goit-rdb-hw-03`.products 
ORDER BY price DESC
LIMIT 10;


/*4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків), які знаходиться в 
цінових межах від 20 до 100, та перевірте правильність її виконання в MySQL Workbench.*/

SELECT COUNT(*) AS product_count
FROM `goit-rdb-hw-03`.products
WHERE price >= 20 AND price < 100;



/*5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) та середню ціну (price) 
у кожного постачальника (supplier_id), та перевірте правильність її виконання в MySQL Workbench.*/

SELECT supplier_id, COUNT(*) AS product_count, AVG(price) AS average_price
FROM `goit-rdb-hw-03`.products
GROUP BY supplier_id;
