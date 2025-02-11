# DevOps project application

# Django Todo List

A simple todo list application built with Django. This project allows users to add tasks and mark them as completed.

## Features
- Add tasks to the todo list
- Display a list of tasks
- Mark tasks as completed (not implemented in the UI, but stored in the database)

## Requirements
- Python 3.x
- Django

## Setup Instructions

1. Clone the repository:
    ```
    git clone https://gitlab.com/rublevskyibohdan/devops-project.git
    cd devops-project
2. Install required dependencies:
    ```
    pip install -r devopsproject/requirements.txt
3. Apply database migrations:
    ```
    python manage.py makemigrations
    python manage.py migrate
4. Create a superuser (optional, for accessing Django admin):
    ```
    python manage.py createsuperuser
5. Run the development server:
    ```
    python manage.py runserver
Open your browser and go to http://127.0.0.1:8000/ to view the todo list.

