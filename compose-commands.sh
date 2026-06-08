# Build images and run containers in background (-d)
docker-compose up --build -d

# Check that everything is running just fine
docker-compose ps

# Shutdown services
docker-compose down