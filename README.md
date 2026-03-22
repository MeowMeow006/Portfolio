# Meow Project - Full Stack App with CI/CD

This project is a full-stack PHP web application with a MySQL database and a Jenkins CI/CD pipeline, fully containerized using Docker.

## Prerequisites
- Docker
- Docker Compose

## Quick Start
1. Clone or navigate to the project directory.
2. Run the following command to build the custom PHP image (with the required `mysqli` extension) and start all services:

```bash
docker-compose up -d --build
```

## Accessing the Services

### 1. Web Application (PHP Website)
- **URL**: [http://localhost:8084](http://localhost:8084)
- **Description**: The main website featuring login and registration functionality.

### 2. Jenkins (CI/CD)
- **URL**: [http://localhost:8083](http://localhost:8083)
- **Description**: Jenkins server for automating builds and deployments. It has Docker socket access to seamlessly build containers.
- **Initial Setup Password**: On first run, Jenkins requires an unlock password. Retrieve it by running:
  ```bash
  docker exec meow-jenkins cat /var/jenkins_home/secrets/initialAdminPassword
  ```

### 3. Database (MySQL)
- **Port**: `3306` (mapped to `localhost:3306`)
- **Description**: MySQL 8.0 database automatically initialized with `user_db` and the `users` table via `init.sql`.

## Stopping the Application

To shut down all services and keep the data:
```bash
docker-compose down
```

To shut down and wipe all persistent data (database and Jenkins configurations):
```bash
docker-compose down -v
```