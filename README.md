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

4. Create the DB with the command

```bash
make create_db
```

5. Start the application with the command

```bash
make start
```

*N.B* If you're using an OS where the `make` command isn't recognized, you can peep in the `Makefile` and run the actual command there.
