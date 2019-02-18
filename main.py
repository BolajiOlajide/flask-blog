from flask import (
    Flask, render_template, flash, redirect, url_for
)

from forms import RegistrationForm, LoginForm


app = Flask(__name__)
# you can generate secrets in Python3 using the secrets module
# secrets.token_hex(16)
app.config['SECRET_KEY'] = '27d2fce2529d42dff3ee87337675092d'

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
