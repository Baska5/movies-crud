# Movies CRUD - JSP

Application for basic CRUD commands for movies.

## Prerequisites
- Application Server - Tomcat Version 9.0.83
- Docker for building images
- JDK 17
- Apache Maven 

## Running Project
Docker Image:
```bash
# Command for Docker image
docker run -d --name midterm_db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql:latest
```
SQL scripts:
```sql
--Create Database 
create database nikoloz_basiashvili;

--Use Database
use nikoloz_basiashvili;

--Create table for movies
create table movies (
    id bigint auto_increment primary key,
    title text,
    director text,
    release_date DATE,
    rating decimal(4, 2),
    description text
);
```
Run the application.
