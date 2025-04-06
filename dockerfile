# FROM baseImage
FROM python:3.9-slim

#WORKDIR /the/workdir/path
WORKDIR /app

#COPY source dest
COPY requirements.txt .

#RUN command
RUN pip install --no-cache-dir -r requirements.txt


#COPY source dest
COPY . .

#CMD [ "executable" ]
CMD [ "python", "app/main.py" ]
