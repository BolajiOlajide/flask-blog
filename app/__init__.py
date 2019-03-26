from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
from flask_mail import Mail

from app.config import Config


db = SQLAlchemy()
bcrypt = Bcrypt()
login_manager = LoginManager()
login_manager.login_view = 'users.login'
login_manager.login_message_category = 'info'
mail = Mail()


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(Config)

    db.init_app(app)
    mail.init_app(app)
    login_manager.init_app(app)
    bcrypt.init_app(app)

    from app.users.routes import users  # noqa: E402
    from app.posts.routes import posts  # noqa: E402
    from app.common.routes import common  # noqa: E402
    from app.errors.handlers import errors  # noqa: E402

    app.register_blueprint(users)
    app.register_blueprint(posts)
    app.register_blueprint(common)
    app.register_blueprint(errors)

    return app
