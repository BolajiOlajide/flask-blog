from flask import Blueprint, render_template


errors = Blueprint('errors', __name__)


# using app_errorhandler instead of just handler because this if we use just
# errorhandler the error handling only occurs within this blueprint alone.
# If we wanted it to handle all errors across the app then the app_errorhandler
# is the way to go about it.
@errors.app_errorhandler(404)
def error_404(error):
    return render_template("errors/404.html"), 404


@errors.app_errorhandler(403)
def error_403(error):
    return render_template("errors/403.html"), 403


@errors.app_errorhandler(500)
def error_500(error):
    return render_template("errors/500.html"), 500
