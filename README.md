# Project Management System

A smart project management system built with **`Django`** that allows users to manage projects with task trees, assign workers, estimate workloads (man-hours), and leverage AI to generate optimized schedules and data-driven insights.

## Author

**Halil İbrahim ŞENAYDIN**  
E-mail: halilsenaydin@gmail.com  
GitHub: [github.com/halilsenaydin](https://github.com/halilsenaydin)

## Dependencies

Ensure you have the following software installed on your machine:

- [Docker Desktop](https://www.docker.com/get-started)

## Project Overview

- **Task Tree Modeling**  
  Create hierarchical task structures (parent/child) with dependencies.

- **Workload & Assignment Tracking**  
  Define estimated work hours (man-hours) and assign team members to tasks.

- **AI-Powered Scheduling**  
  Automatically generate optimal project schedules considering working days, holidays, resource availability, and task dependencies.

- **Data-Driven Recommendations**  
  Project managers get actionable insights and suggestions based on historical and real-time data.

- **Visual Planning Tools**  
  Integration with Gantt charts and dashboards for visual project tracking.

- **Microservices Architecture**  
  Each service runs independently with its own database for better scalability and maintainability.

## Tech Stack

- **Backend**: Django, Django REST Framework
- **Database**: PostgreSQL (one per microservice)
- **Containerization & Orchestration**: Docker, Docker Compose

## Installation

### Cloning the Project

Clone the project from GitHub:

```bash
git clone https://github.com/halilsenaydin/project-management-system.git
cd project-management-system
```

## Running the Project

### Using Docker Compose

The project runs all microservices and their databases together via Docker Compose.

To build and start all services:

```bash
docker-compose up --build
```

- UserService will be accessible at: `http://localhost:8000`
- ProjectService will be accessible at: `http://localhost:8001`
- TaskService will be accessible at: `http://localhost:8002`

Each service connects to its own dedicated PostgreSQL database running in a separate container.

### Accessing Services Individually

You can also start or rebuild individual services by specifying the service name:

```bash
docker-compose up --build user-service
docker-compose up --build project-service
docker-compose up --build task-service
```
