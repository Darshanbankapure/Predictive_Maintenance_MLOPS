FROM python:3.10.13 

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose a port if necessary (e.g., for APIs or Streamlit apps)
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "final_steamlit.py", "--server.port=8501", "--server.address=0.0.0.0"]
