FROM python:3.9

WORKDIR /home/app

COPY requirements.txt /home/app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/app

CMD ["python", "core/manage.py", "migrate"]
CMD ["python", "core/manage.py", "runserver", "0.0.0.0:3000"]

EXPOSE 3000