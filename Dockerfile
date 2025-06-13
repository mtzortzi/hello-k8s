FROM python:3.10-slim    
WORKDIR /app              # Working directory inside container
COPY requirements.txt .   
RUN pip install -r requirements.txt  # Install dependencies
COPY app.py .            
EXPOSE 5000               
CMD ["python", "app.py"] 

