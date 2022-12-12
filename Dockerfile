FROM python:3.7-alpine

EXPOSE 5000

RUN python -m pip install --upgrade pip

RUN pip install flask gevent scikit-learn

COPY . /app/

WORKDIR /app/

CMD ["flask" ,"run"]