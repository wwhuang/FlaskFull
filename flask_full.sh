BASE_FOLDER = $1
PROJECT_NAME = $2

mkdir -p $BASE_FOLDER/$PROJECT_NAME
mkdir -p $BASE_FOLDER/$PROJECT_NAME/static
mkdir -p $BASE_FOLDER/$PROJECT_NAME/static/img
mkdir -p $BASE_FOLDER/$PROJECT_NAME/static/css
mkdir -p $BASE_FOLDER/$PROJECT_NAME/static/js
mkdir -p $BASE_FOLDER/$PROJECT_NAME/templates

sudo mkdir -p /etc/uwsgi/apps_available
sudo mkdir -p /etc/uwsgi/apps_enabled

cd /etc/uwsgi
sudo touch apps_available/$PROJECT_NAME.ini
sudo ln apps_available/$PROJECT_NAME.ini apps_enabled/$PROJECT_NAME.ini
