# FLASK-BLOG

## INSTALLATION/SETUP

This project is easy to set up, just follow the steps shown below:

1. Clone the project with the command

```bash
git clone https://github.com/BolajiOlajide/flask-blog.git
```

<!-- markdownlint-disable MD029 -->

2. Create a virtualenvironment. You can use any means you know, I usually opt
for [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/). Once done ensure you activate the created virtual environment.

3. Install the project dependencies with the command:

```bash
pipenv install
```

4. Make a copy of the `.env.example` and rename it to `.env`. Fill in the empty fields with your desired details.

5. Create the DB with the command

```bash
make create_db
```

6. You can seed your DB with the database dump found in the `sql` directory.

7. Start the application with the command

```bash
make start
```

*N.B* If you're using an OS where the `make` command isn't recognized (mostly windows users I think), you can peep in the `Makefile` and run the actual command there.
