pip install flask gunicorn
gunicorn -w 4 -b 0.0.0.0:1200 --reload ubaid:app
