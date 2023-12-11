venvname="ubaidv"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi

source "$venvname/bin/activate"

pip install flask gunicorn
gunicorn -w 4 -b 0.0.0.0:1200 --reload ubaid:app
