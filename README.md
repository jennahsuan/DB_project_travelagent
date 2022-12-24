# 🌐 TRAVELLO

A travel planner website UI integrated with PostgreSQL. User can register and sign in.

---

## Setup

### DB
(source code的tables)
1. download [PostgreSQL 14](https://www.postgresql.org/download/) and [pgAdmin](https://www.pgadmin.org/) (GUI介面)
2. Open pgAdmin4，在PostgreSQL/Database按右鍵 -> Create Database -> 命名為`DB_travel`
    
    <img src="images/createDB.png"  alt="drawing" width="600"/>    
    
    - 首次下載pgAdmin 如果系統要求設定user password，則設為`postgres`
    
       <img src="images/settings.png"  alt="drawing" width="600"/>   
    
3. 在`DB_travel` 按右鍵，選Query Tool

    <img src="images/import_sql1.png"  alt="drawing" width="400"/>
    
    按下左上角資料夾按鈕(Open file)，在跳出的視窗中選取 `db.sql` 的路徑，按右下角Select
    
    <img src="images/import_sql2.png"  alt="drawing" width="500"/>
    
    在 Query Editor 中會自動出現新增資料與表格的queries，按下右上角的 Run 按鈕來執行。完成後Refresh Schema，即可看到所有表格
    
    <img src="images/import_sql3.png"  alt="drawing" width="500"/>

4. 為了在新增資料時，postgresql能夠依據已匯入的資料id來生成新id，需在Query Editor輸入以下指令並執行。

    ```shell
    SELECT setval('accounts_member_id_seq', (SELECT MAX(id) from public.accounts_member));
    SELECT setval('accounts_guide_id_seq', (SELECT MAX(id) from public.accounts_guide));
    SELECT setval('travelloapp_tour_id_seq', (SELECT MAX(id) from public.travelloapp_tour));
    SELECT setval('calc_order_id_seq', (SELECT MAX(id) from public.calc_order));
    SELECT setval('calc_tourist_id_seq', (SELECT MAX(id) from public.calc_tourist));

    ```
5. Open travello/settings.py, use the correct 'PASSWORD' in DATABASES. 

<!-- 5. 第一次runserver 後，應該就能在pgAdmin看到DB_travel/Schemas/public/Tables 內看到多個tables。在一table按右鍵 -> View/Edit data -> All rows ，即可看到表格形式的table。 -->
<!-- python manage.py loaddata whole.json  -->

<!-- export sql: https://stackoverflow.com/questions/71490970/how-to-export-postgres-schema-data-to-plain-sql-in-pgadmin-4 -->

### Backend
All are done in the root directory

1. set virtual environment

    ```sh
    # for windows
    pip install virtualenv
    py -3 -m venv .venv
    .venv\scripts\activate
    ```
    ```sh
    # for mac(不確定是不是這樣)
    pip install virtualenv
    virtualenv venv
    source venv/bin/activate
    ```

2. install packages

    ```sh
    pip install -r requirements.txt
    # OR
    python -m pip install -r requirements.txt
    ```

3. start server

    ```sh
    python manage.py makemigrations
    python manage.py migrate
    python manage.py runserver
    # https://127.0.0.1:8000 in your browser
    ```

### Create SUPER USER

```sh
python manage.py createsuperuser

```
<!-- user accounts are created for the first 5 guides and members with password 'test' -->

- Set username & password as you like
- Go to http://127.0.0.1:8000/admin/ Add some testing data and check in pgAdmin to see if the tables have updated some new rows.

---

## :bulb: Built Using

<!-- - [**BOOTSTRAP**](https://getbootstrap.com/)   -->
- [**DJANGO**](https://www.djangoproject.com/)
- [**POSTGRESQL**](https://www.postgresql.org/)

- [**kanban**](https://www.notion.so/65fda7ca561d472d85257791d9525a06?v=16f41c887d7249e4af52043d52b61dd7)
<!-- 
---

## :iphone: Screenshots

---

## Reference
https://github.com/UtkarshChaurasia/travello.git
https://github.com/okanuregen/Django---Hotel-Management-System.git
https://github.com/Shuai-Xie/flight-ticket-booksystem.git
