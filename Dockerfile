FROM public.ecr.aws/lambda/python:3.11

# Install dependencies
COPY requirements.txt .
RUN pip3 install -r requirements.txt -t .

# Copy source
COPY app.py .

# Set handler
CMD ["app.handler"]

