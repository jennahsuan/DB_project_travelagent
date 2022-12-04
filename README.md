# 🌐 TRAVELLO

A travel planner website UI integrated with PostgreSQL. User can register and sign in.

---

## Setup

### DB
(source code的tables)
1. download [PostgreSQL 14](https://www.postgresql.org/download/) and [pgAdmin](https://www.pgadmin.org/) (GUI介面)
2. Open pgAdmin4，在PostgreSQL/Database按右鍵 -> Create Database -> 命名為`DB_travel`
    
    <img src="images/createDB.png"/>    
    
    - 首次下載pgAdmin 如果系統要求設定user password，則設為`postgres`
        <img src="images/settings.png"/>   
    
3. Open travello/settings.py, use the correct 'PASSWORD' in DATABASES. 
4. 第一次runserver 後，應該就能在pgAdmin看到DB_travel/Schemas/public/Tables 內看到多個tables。在一table按右鍵 -> View/Edit data -> All rows ，即可看到表格形式的table。
<!-- python manage.py loaddata whole.json  -->

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



<img src="images/1.png"/>
<img src="images/2.png"/>
<img src="images/3.png"/>
<img src="images/4.png"/>
<img src="images/5.png"/>
<img src="images/6.png"/>
<img src="images/7.png"/>
<img src="images/8.png"/>
---

## :man: Project Created & Maintained By

<img src = "https://avatars2.githubusercontent.com/u/47274683?s=460&u=d0f1b40291f480413ce4ac9a96b6d4603289844e&v=4"  height="120" alt=""> <br>Utkarsh Chaurasia
<p>
<a href = "https://github.com/UtkarshChaurasia"><img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36"/></a>
<a href = "https://www.linkedin.com/in/utkarshchaurasia/">
<img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36"/>
</a>
</p>
   -->
   
---

## Reference
https://github.com/UtkarshChaurasia/travello.git
