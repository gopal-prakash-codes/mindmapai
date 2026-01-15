#!/bin/bash

# Set environment variables
export DATABASE_URL="postgresql://user:password@localhost:5432/mydatabase"
export OPENAI_API_KEY="your_openai_api_key"
export FASTAPI_HOST="0.0.0.0"
export FASTAPI_PORT="8000"
export NEXTJS_HOST="0.0.0.0"
export NEXTJS_PORT="3000"

# Function to start FastAPI server
start_fastapi() {
    echo "Starting FastAPI server..."
    cd backend
    uvicorn main:app --host $FASTAPI_HOST --port $FASTAPI_PORT --reload &
    if [ $? -ne 0 ]; then
        echo "Failed to start FastAPI server"
        exit 1
    fi
}

# Function to start Next.js server
start_nextjs() {
    echo "Starting Next.js server..."
    cd frontend
    npm install
    npm run build
    npm start -- -H $NEXTJS_HOST -p $NEXTJS_PORT &
    if [ $? -ne 0 ]; then
        echo "Failed to start Next.js server"
        exit 1
    fi
}

# Function to run database migrations
run_migrations() {
    echo "Running database migrations..."
    cd backend
    alembic upgrade head
    if [ $? -ne 0 ]; then
        echo "Database migrations failed"
        exit 1
    fi
}

# Main deployment function
deploy() {
    run_migrations
    start_fastapi
    start_nextjs
    echo "Deployment completed successfully."
}

# Execute deployment
deploy

# Wait for all background processes to finish
wait