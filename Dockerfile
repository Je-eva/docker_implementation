#FROM python:3.8-alpine
#COPY . /app1
#WORKDIR /app1
#RUN pip install -r requ.txt
#CMD python app1.py


FROM python:3.8-alpine
WORKDIR /app1
ENV FLASK_APP=app1.py
ENV FLASK_RUN_HOST=0.0.0.0 
COPY . /app1
RUN pip install -r requ.txt
EXPOSE 5000
CMD ["flask","run"]
