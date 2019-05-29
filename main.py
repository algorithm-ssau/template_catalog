from flask import Flask, render_template, Blueprint
from sqlite.queries import get_db

bp = Blueprint("main", __name__)


@bp.route("/")
def main():
    db = get_db()
    items = db.execute(
        "SELECT p.id, title, body, created, author_id, username"
        " FROM post p JOIN user u ON p.author_id = u.id"
        " ORDER BY created DESC"
    ).fetchall()
    return render_template("view/template_layout_airplanes.html", items=items)


@bp.route("/test")
def test():
    return "Test!"
