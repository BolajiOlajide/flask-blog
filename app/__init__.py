from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager


app = Flask(__name__)
# you can generate secrets in Python3 using the secrets module
# secrets.token_hex(16)
app.config['SECRET_KEY'] = '27d2fce2529d42dff3ee87337675092d'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///flaskBlog.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

from app import routes  # noqa: #402
