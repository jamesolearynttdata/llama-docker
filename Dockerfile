```dockerfile
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the LLaMA repository and install dependencies
COPY llama/requirements.txt .
RUN pip install -r requirements.txt

# Copy the LLaMA model weights
COPY llama/model_weights.pth .

# Run the script that trains and fine-tunes the model
CMD ["python", "train_and_finetune.py"]
```
