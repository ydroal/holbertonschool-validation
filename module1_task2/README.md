# Awesome Inc.

This website(Awesome Inc.) is built using GoHugo with the Ananke theme.

## Prerequisites

- GoHugo v0.84.0
- GNU Make in version 3.81+
- Ananke theme

Note: If you are using the sandbox, do NOT install Hugo with the package manager. Download the correct executable or package file from their GitHub.

## Setup

1. Clone this repository.

To build the website using Docker, follow these steps:
1. Install Docker on your local machine.
2. In the terminal, navigate to the `module1_task0` directory.
3. Run the following command to build the Docker image:

```
docker build -t awesomeinc .
```

4. Run the following command to create a Docker container and start an interactive session:

```
docker run --rm -it -v $(pwd):/app -w /app/module1_task0 awesomeinc /bin/bash
```
5. Inside the Docker container, you can now use the Make commands to build, clean, and create new blog posts.

## Lifecycle

The development lifecycle of this project consists of the following steps:

### Build

Generate the website from the markdown and configuration files in the `dist/` directory.

```
make build
```

### Clean

Cleanup the content of the dist/ directory.

```
make clean
```

### Post

Create a new blog post with filename and title come from the environment variables POST_TITLE and POST_NAME.

```
POST_TITLE="Your post title" POST_NAME="your-post-filename" make post
```

### Help

`make help`: Prints out the list of targets and their usage.