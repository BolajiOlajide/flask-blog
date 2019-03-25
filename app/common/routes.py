import os

from flask import Blueprint, render_template, request
from dotenv import load_dotenv

from app.models import Post


dotenv_path = os.path.join(os.path.dirname(__file__), '.env')
load_dotenv(dotenv_path)


common = Blueprint('common', __name__)


@common.route('/')
@common.route('/home')
def home():
    PER_PAGE = os.getenv('PER_PAGE', 5)
    page = request.args.get('page', 1, type=int)
    posts = Post.query\
        .order_by(Post.date_posted.desc())\
        .paginate(per_page=int(PER_PAGE), page=page)
    return render_template('home.html', posts=posts)


@common.route('/about')
def about():
    return render_template('about.html', title="About")
