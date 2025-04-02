## BlogPython

BlogPython is a simple blog application built using Python and Django, providing a platform for users to create and manage blog posts. It allows users to create, edit, and delete posts, as well as view posts on the main page.

# Features
Post Management: Create, edit, and delete blog posts.

User Authentication: Allows users to register, log in, and manage their own posts.

Categories: Blog posts can be organized by categories.

Comments: Users can add comments to blog posts.

# Project Structure
* blog/: Contains the main blog application that handles posts, categories, and comments.
* users/: Application for user authentication, including registration and login functionality.
* templates/: Contains the HTML templates used for rendering blog pages.
* static/: Static files like CSS and JavaScript.
* db.sqlite3: SQLite database that stores user data, posts, comments, and categories.
* manage.py: Script for managing the Django application and executing administrative tasks.

# Prerequisites
* Python 3.x
* Django
* SQLite

## How to Run

1. Clone the repository:
* git clone https://github.com/luizcurti/blogPython.git

2. Navigate to the project directory:
* cd blogPython

3. Install the dependencies:
* pip install -r requirements.txt

4. Apply the database migrations:
* python manage.py migrate

5. Create a superuser (optional, to access the Django admin panel):
* python manage.py createsuperuser

6. Start the development server:
* python manage.py runserver

Access the application in your browser at http://127.0.0.1:8000/.

## Notes
If you wish to use the Django admin panel, you can log in at http://127.0.0.1:8000/admin/ with the superuser credentials created earlier.

Posts are displayed on the homepage, and users can navigate through categories.

Comments are displayed on individual blog posts, allowing readers to interact with the content.

## Contributions
Contributions are welcome! Feel free to open issues or submit pull requests with improvements or bug fixes.