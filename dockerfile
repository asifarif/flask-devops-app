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

#EXPOSE port, Declare the port the app listens on
EXPOSE 5000

#CMD [ "executable" ]
CMD [ "python", "app/main.py" ]
