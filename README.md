# 🚀 My Karafka App

This project serves as a study platform for exploring and integrating Karafka with a Ruby on Rails backend, leveraging PostgreSQL for data persistence and Kafka for message queuing.

## 🛠️ Software Stack

* **<img src="https://karafka.io/images/karafka-logo.png" width="20" height="20"> [Karafka](https://karafka.io/docs/)**: A powerful and efficient Ruby and Rails framework designed for processing Kafka messages. It simplifies the integration of Kafka into Ruby applications, making it ideal for building scalable and reliable event-driven systems.
* **<img src="https://www.postgresql.org/media/img/about/press/elephant.png" width="20" height="20"> [PostgreSQL](https://www.postgresql.org/docs/15/index.html)**: An advanced, open-source object-relational database system that provides robust data storage and management capabilities. It's known for its reliability, data integrity, and extensive feature set.
* **<img src="https://rubyonrails.org/images/rails-logo.svg" width="20" height="20"> [Ruby on Rails](https://rubyonrails.org/2025/3/12/Rails-Version-8-0-2-has-been-released)**: A web application framework written in Ruby that follows the convention over configuration (CoC) and don't repeat yourself (DRY) principles. It facilitates rapid development of web applications with a focus on simplicity and productivity.
* **<img src="https://zookeeper.apache.org/images/zookeeper_small.gif" width="20" height="20"> [Apache ZooKeeper](https://zookeeper.apache.org/)**: A centralized service for maintaining configuration information, naming, providing distributed synchronization, and group services. It's essential for managing Kafka clusters.
* **<img src="https://kafka.apache.org/images/logo.png" width="20" height="20"> [Apache Kafka](https://kafka.apache.org/)**: A distributed streaming platform that enables building real-time data pipelines and streaming applications. It's highly scalable, fault-tolerant, and designed for high throughput.
* **<img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" width="20" height="20"> [Docker](https://www.docker.com/)**: A platform for developing, shipping, and running applications in containers, enabling consistent environments across different stages of development.

## ⚙️ Project Structure

The project is structured to separate the backend API (Rails) from the Kafka consumer (Karafka).

* `my_kafka_app/`: Contains the Ruby on Rails application and Karafka consumer code.
* `01_build_local_project.sh`: A script for building the Docker images locally.
* `.env.example`: Example environment variable files for the backend.
* `docker-compose.yml`: Defines the services for the application, including PostgreSQL, Kafka, ZooKeeper, Rails app, and Karafka consumer.

## 🐳 Developing using Docker

### 📋 Prerequisites

* Docker and Docker Compose installed.

### 🏗️ Building and Running the Project

1.  **Build the Docker images:**

    ```bash
    bash 01_build_local_project.sh
    ```

2.  **Start the services:**

    ```bash
    docker-compose up -d
    ```

    This will start the PostgreSQL database, ZooKeeper, Kafka, Rails application, and Karafka consumer.

### 📂 Environment Variables

Environment variables are managed using `.env` files. You can find example files (`.env.example`) in the `my_kafka_app/` directory.

### 🔑 File Permissions

If you create files inside the Docker containers and need to access them locally, ensure correct permissions:

```bash
sudo chown -R $USER:$USER .
```