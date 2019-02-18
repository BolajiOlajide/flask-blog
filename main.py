from datetime import datetime

from flask import (
    Flask, render_template, flash, redirect, url_for
)
from flask_sqlalchemy import SQLAlchemy

# custom forms
from forms import RegistrationForm, LoginForm


app = Flask(__name__)
# you can generate secrets in Python3 using the secrets module
# secrets.token_hex(16)
app.config['SECRET_KEY'] = '27d2fce2529d42dff3ee87337675092d'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///flaskBlog.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    image_file = db.Column(
        db.String(20), nullable=False, default='default.jpg'
    )
    password = db.Column(db.String(60), nullable=False)
    # this isn;t a column, just allows posts for each user to be lazy
    # loaded when you fetch a user
    posts = db.relationship('Post', backref='author', lazy=True)

    def __repr__(self):
        return f"User('{self.username}','{self.email}', '{self.image_file}')"


class Post(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    date_posted = db.Column(
        db.DateTime, nullable=False, default=datetime.utcnow
    )
    content = db.Column(db.Text, nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)

    def __repr__(self):
        return f"Post('{self.title}')"


posts = [
    {
        'author': 'Coop Proton',
        'title': 'Blog post 1',
        'content': 'First post content',
        'date_posted': 'April 20, 2018'
    },
    {
        'author': 'Jane Doe',
        'title': 'Blog post 2',
        'content': 'Second post content',
        'date_posted': 'April 21, 2018'
    },
    {
        'author': 'Corey Schafer',
        'title': 'Blog post 3',
        'content': 'Third post content',
        'date_posted': 'April 22, 2018'
    }
]


@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html', posts=posts)


@app.route('/about')
def about():
    return render_template('about.html', title="About")


@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegistrationForm()
    if form.validate_on_submit():
        flash(f'Account created for {form.username.data}!', 'success')
        return redirect(url_for('home'))
    return render_template('register.html', form=form, title='Register')


@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        if (
            form.email.data == 'admin@blog.com'
            and
            form.password.data == 'password'
        ):
            flash('You have been logged in!', 'success')
            return redirect(url_for('home'))
        else:
            flash(
                'Login Unsuccessful. Please check username and password!',
                'danger'
            )
    return render_template('login.html', form=form, title='Log In')


if __name__ == "__main__":
    app.run(debug=True)
