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

## Tech Stack

- **Backend**: Django, Django REST Framework
- **Database**: PostgreSQL / SQLite (dev)
- **AI/Optimization**: Python (scikit-learn, ortools, etc.)

## Installation

### Cloning the Project

Clone the project from GitHub:

```bash
git clone https://github.com/halilsenaydin/project-management-system.git
cd project-management-system
```

## Running the Project

### Running the Django Server

The project can be viewed at `localhost:8000`

```bash
docker-compose up --build
```
