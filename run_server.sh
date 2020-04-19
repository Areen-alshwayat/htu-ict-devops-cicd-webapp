deactivate
open the git repo
git pull

source venv/bin/activate
export FLASK_APP=application.py
flask run -h 0.0.0.0

gunicorn --bind=0.0.0.0:1742 --workers=4 hello:app
