FROM python:3.10-slim
COPY . /app 
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt 

EXPOSE 8051

RUN mkdir  ~/.streamlit

RUN cp config.toml ~/.streamlit/config.toml

RUN cp credentials.toml ~/.streamlit/credentials.toml  

#ENTRYPOINT [ "streamlit","run" ]

CMD ["streamlit","run" ,"main.py" ,"--server.port=8501","--server.address=0.0.0.0"]