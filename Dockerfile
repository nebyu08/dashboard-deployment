FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt 

EXPOSE 8051

RUN mkdir ~/.streamlit

RUN cp  /app/config.toml ~/.streamlit/config.toml

RUN cp  /app/credentials.toml ~/.streamlit/credentials.toml

ENTRYPOINT ["streamlit","run" ,"main.py" ,"--server.port=8051","--server.address=0.0.0.0"]
