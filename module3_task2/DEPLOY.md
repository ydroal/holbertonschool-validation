# Deployment Guide

## Archive Contents and Extraction

The archive `awesome-website.zip` contains the `dist/` directory which includes all the necessary files to run the website. 

To unarchive it, use the following command:

```bash
unzip awesome-website.zip
```

## Starting and Stopping the Application

To start the application, navigate to the dist/ directory and use the following command:

#Replace 'app' with your application's executable file
./app

To stop the application, simply find the process ID (PID) and kill it:

#Replace 'app' with your application's executable file
pkill app

