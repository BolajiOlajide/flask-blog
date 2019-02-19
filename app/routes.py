from flask import (
    render_template, flash, redirect, url_for, request
)
from flask_login import (
    login_user, current_user, logout_user, login_required
)

from app import app, db, bcrypt
from app.models import User  # noqa: E402
from app.forms import RegistrationForm, LoginForm


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
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = RegistrationForm()
    if form.validate_on_submit():
        hashed_pw = bcrypt.generate_password_hash(
            form.password.data
        ).decode('utf-8')
        user = User(
            username=form.username.data,
            email=form.email.data,
            password=hashed_pw
        )
        db.session.add(user)
        db.session.commit()

        flash(
            'Your account has been created! You are now able to log in',
            'success'
        )
        return redirect(url_for('home'))
    return render_template('register.html', form=form, title='Register')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        if user and bcrypt.check_password_hash(
                        user.password, form.password.data):
            login_user(user, remember=form.remember.data)
            next_page = request.args.get('next')
            return redirect(next_page) if next_page else redirect(
                url_for('home'))
        flash(
            'Login Unsuccessful. Please check email and password!',
            'danger'
        )
    return render_template('login.html', form=form, title='Log In')


@app.route('/logout', methods=['GET'])
def logout():
    logout_user()
    return redirect(url_for('home'))


@app.route('/account', methods=['GET'])
@login_required
def user_account():
    return render_template('account.html', title='Account')