# UAMPP - Ubuntu, Apache2, MySQL, PHP and phpMyAdmin Docker Images

## What is it?
This project consists of a Dockerfile and a docker-compose.yml file designed to simplify the setup of a development environment with Ubuntu, Apache, MySQL, PHP, and phpMyAdmin.

## Included Components:

- `Ubuntu (latest)`: Base operating system.
- `Apache (2.x)`: Web server used to host web applications.
- `MySQL (latest)`: Database.
- `PHP (latest)`: Widely used scripting language for web development.
- `phpMyAdmin (latest)`: Graphical interface for managing MySQL databases.

## Configuration of the `.env` File

Before building and running the container, make sure to configure the `.env` file. You can do this by copying the `.env-example` file and adjusting the parameters as needed. Follow the instructions below:

1. **Copy the `.env-example` file:**
   ```bash
   cp .env-example .env
   ```

2. **Open the `.env` file in a text editor and configure the following parameters:**

    - `PROJECTS_PATH`: Path to the projects folder on the host. Example: `~/projects`

    - `MYSQL_ROOT_USERNAME`: MySQL root user name. Example: `root`

    - `MYSQL_ROOT_PASSWORD`: MySQL root user password. Example: `rootpass`

    - `MYSQL_PORT`: Port for the MySQL server. Example: `3306`

    - `PHPMYADMIN_PORT`: Port for phpMyAdmin. Example: `8080`

    - `APACHE_SERVER_PORT`: Port for the Apache server. Example: `8000`

3. **Save the changes to the `.env` file.**

## Usage

1. **Run and wait for volume configuration:**
   ```bash
   docker compose up -d --build
   ```

2. **Test the connection to the server:**
    ```bash
   curl -i http://127.0.0.1:${APACHE_SERVER_PORT}
   ```

3. **Test the connection to phpMyAdmin:**
    ```bash
   curl -i http://127.0.0.1:${PHPMYADMIN_PORT}
   ```

## Contribution

Any kind of contribution to this repository is welcome.