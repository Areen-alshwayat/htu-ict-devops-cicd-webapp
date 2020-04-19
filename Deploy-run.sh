  
#!/bin/bash 
 
git clone https://github.com/Areen-alshwayat/htu-ict-devops-cicd-webapp
 
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

export FLASK_APP=application.py
# export FLASK_DEBUG=1 
flask run -h 0.0.0.0
