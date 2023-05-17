# Deployment Guide

The archive `awesome-website.zip` contains the `dist/`
directory which includes all the necessary files to run the website.

## Creating a new release

1. To create a new release. 
You can do this using the `git tag` command, followed by the tag name.
For example: git tag 1.0.0

This will create a new tag named "1.0.0".

2. After creating the tag, you need to push it to the GitHub repository.  
You can do this using the `git push` command, followed by the name of the tag. 
For example: git push origin 1.0.0

This will push the tag "1.0.0" to the GitHub repository.

3. Once the tag is pushed, a new release will be automatically created in the GitHub repository, thanks to a GitHub Action workflow that has been set up. 
