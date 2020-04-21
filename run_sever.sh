#! /bin/bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

export FLASK_APP=hello.py
# export FLASK_DEBUG=1 
flask run -h 0.0.0.0

source venv/bin/activate
export FLASK_APP=hello.py
flask run -h 0.0.0.0


pip install gunicorn
gunicorn --bind=0.0.0.0:1742 --workers=4 hello:app


