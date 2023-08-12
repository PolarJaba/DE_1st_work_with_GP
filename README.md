# DE_1st_work_with_GP

В рамках задания развернута БД на тестовом кластере Greenplum. 

Скрипты для создания таблиц БД расположены в [файле](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/scripts.sql). Заполнение таблиц осуществлялось через импорт данных в БД из [csv-файлов](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/data).

Для этого использовался psql-клиент:

![psql_commands](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/psql_commands.PNG)

Включен встроенный оптимизатор GP и сделан запрос, который рассчитывает сумму продаж определенного товара за определенную единицу времени (скрипты также в [файле](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/scripts.sql)). 

В результате получены таблицы (для наглядности получена также таблица с суммой от продаж каждого из товаров за определенную единицу времени):

![all_products](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/all_products.PNG) ![one_product](https://github.com/PolarJaba/DE_1st_work_with_GP/blob/main/one_product.PNG)
