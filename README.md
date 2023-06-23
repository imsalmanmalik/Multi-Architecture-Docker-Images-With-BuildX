This project demonstrates the usage of Docker and multi-architecture support to build and run a Node.js server on different platforms.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Building the Docker Image](#building-the-docker-image)
  - [Running the Server](#running-the-server)
  - [Running the ARM Version](#running-the-arm-version)
- [Project Structure](#project-structure)
- [Makefile Commands](#makefile-commands)
- [Contributing](#contributing)

## Prerequisites

Make sure you have the following prerequisites installed on your machine:

- Docker: https://www.docker.com/get-started

## Getting Started

Follow the steps below to build and run the project locally.

### Building the Docker Image

To build the Docker image, execute the following command:

```bash
make build
```

### Running the Server
To run the Node.js server locally using the Docker image, execute the following command:

```bash
make run
```

This command will start a Docker container from the built image and expose port 8000 on your machine. You can access the server at http://localhost:8000. The server will respond with a simple message displaying the architecture of the machine.

To stop and remove the running container, execute:

```bash
make stop
```

### Running the ARM Version
To run the ARM version of the server, execute the following command:

```bash
make run-arm
```

This command will start a Docker container from the specific ARM version of the image and expose port 8000 on your machine. You can access the ARM server at http://localhost:8000.

## Project Structure
The project has the following structure:

Dockerfile: Contains the instructions to build the Docker image.
Makefile: Provides convenient commands to build, run, and manage the Docker image and container.
package.json: Defines the project metadata and dependencies.
server.js: Contains the Node.js server code.

## Makefile Commands
The Makefile includes the following commands:

make build: Builds the multi-architecture Docker image using Docker Buildx.
make run: Runs the Docker container locally using the built image.
make stop: Stops and removes the running container.
make run-arm: Runs the ARM version of the server.
make inspect: Inspects the Docker image to display information and metadata.
For more details on each command, refer to the Makefile itself.

## Contributing
Contributions to the project are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.
