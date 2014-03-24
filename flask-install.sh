python virtualenv.py flask

flask/bin/pip install flask==0.9
flask/bin/pip install flask-login
flask/bin/pip install flask-openid
flask/bin/pip install flask-mail==0.7.6
flask/bin/pip install sqlalchemy==0.7.9
flask/bin/pip install flask-sqlalchemy==0.16
flask/bin/pip install sqlalchemy-migrate==0.7.2
flask/bin/pip install flask-whooshalchemy==0.55a
flask/bin/pip install flask-wtf==0.8.4
flask/bin/pip install pytz==2013b
flask/bin/pip install flask-babel==0.8
flask/bin/pip install flup
flask/bin/pip install pyopenssl

mkdir app
mkdir app/static
mkdir app/templates
mkdir tmp

touch app/__init__.py
echo "from flask import Flask" > app/__init__.py
echo "app = Flask(__name__)" >> app/__init__.py
echo "from app import views" >> app/__init__.py

touch app/views.py
echo "from app import app" > app/views.py
echo " " >> app/views.py
echo "@app.route('/')" >> app/views.py
echo "@app.route('/index/')" >> app/views.py
echo "def index():" >> app/views.py
echo "   return \"Hello, World!\"" >> app/views.py

touch run.py
echo "#!flask/bin/python" > run.py
echo "from app import app" >> run.py
echo "app.run(debug = True)" >> run.py
chmod +x run.py
