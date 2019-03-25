import os

from flask import (
    Blueprint, render_template, flash, redirect,
    url_for, request
)
from flask_login import (
    login_user, current_user, logout_user, login_required
)
from dotenv import load_dotenv

from app import db, bcrypt
from app.models import User, Post
from app.users.forms import (
    RegistrationForm, LoginForm, UpdateAccountForm,
    RequestResetForm, ResetPasswordForm
)
from app.utils import save_picture, send_reset_email


dotenv_path = os.path.join(os.path.dirname(__file__), '.env')
load_dotenv(dotenv_path)


users = Blueprint('users', __name__)


@users.route('/register', methods=['GET', 'POST'])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('common.home'))
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
        login_user(user)

        flash(
            'Your account has been created! You are now able to log in',
            'success'
        )
        return redirect(url_for('common.home'))
    return render_template('register.html', form=form, title='Register')


@users.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('common.home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        if user and bcrypt.check_password_hash(
                        user.password, form.password.data):
            login_user(user, remember=form.remember.data)
            next_page = request.args.get('next')
            return redirect(next_page) if next_page else redirect(
                url_for('common.home'))
        flash(
            'Login Unsuccessful. Please check email and password!',
            'danger'
        )
    return render_template('login.html', form=form, title='Log In')


@users.route('/logout', methods=['GET'])
def logout():
    logout_user()
    return redirect(url_for('common.home'))


@users.route('/account', methods=['GET', 'POST'])
@login_required
def user_account():
    form = UpdateAccountForm()
    if form.validate_on_submit():
        if form.picture.data:
            picture_file = save_picture(form.picture.data)
            current_user.image_file = picture_file
        current_user.username = form.username.data
        current_user.email = form.email.data
        db.session.commit()
        flash('Your account has been updated', 'success')
        return redirect(url_for('users.user_account'))
    elif request.method == 'GET':
        form.username.data = current_user.username
        form.email.data = current_user.email
    image_file = url_for(
        'static', filename='pictures/' + current_user.image_file)
    return render_template(
        'account.html', title='Account', image_file=image_file,
        form=form
    )


@users.route('/user/<string:username>')
def user_post(username):
    PER_PAGE = os.getenv('PER_PAGE', 5)
    page = request.args.get('page', 1, type=int)
    user = User.query.filter_by(username=username).first_or_404()
    posts = Post.query.filter_by(author=user)\
        .order_by(Post.date_posted.desc())\
        .paginate(per_page=int(PER_PAGE), page=page)
    return render_template('user_post.html', posts=posts, user=user)


@users.route("/reset_password", methods=['GET', 'POST'])
def reset_request():
    if current_user.is_authenticated:
        return redirect(url_for('common.home'))
    form = RequestResetForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        send_reset_email(user)
        flashmsg = 'An email has been sent with instructions to\
        reset your password.'
        flash(flashmsg, 'info')
        return redirect(url_for('users.login'))
    return render_template(
        'reset_request.html', form=form, title='Reset Password')


@users.route("/reset_token/<token>", methods=['GET', 'POST'])
def reset_token(token):
    if current_user.is_authenticated:
        return redirect(url_for('common.home'))
    user = User.verify_reset_token(token)
    if not user:
        flash('That is an invalid or expired token', 'warning')
        return redirect(url_for('users.reset_request'))
    if form.validate_on_submit():
        hashed_pw = bcrypt.generate_password_hash(
            form.password.data
        ).decode('utf-8')
        user.password = hashed_pw
        db.session.commit()

        flash(
            'Your password has been updated! You are now able to log in',
            'success'
        )
        return redirect(url_for('users.login'))
    form = ResetPasswordForm()
    return render_template(
        'reset_token.html', form=form,
        title='Reset Password')
