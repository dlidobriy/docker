FROM python:3
RUN mkdir /django
COPY . /django
WORKDIR /django
RUN pip3 ins tall -r requirements.txt
CMD python3 mana ge.py makemigrations && python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000