FROM python:3.9

# Set the working directory
WORKDIR /app

# Install Python dependencies
RUN pip install anthropic config datasets docker gymnasium numpy openai pandas rich ruamel.yaml swebench tenacity unidiff simple-parsing together ollama boto3

# Install Docker CLI using the official Docker installation script
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

# Copy the application code
# Do this last to take advantage of the docker layer mechanism
COPY . /app

