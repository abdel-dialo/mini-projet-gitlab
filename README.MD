Static Website Example
----------------------

To be used with Cloud Academy labs.


License
----------------------

This static website is based on the Dimension template by [HTML5 UP](https://html5up.net/)

Creative Commons License
All of the site templates I create for [HTML5 UP](https://html5up.net/) are licensed under the Creative Commons Attribution 3.0 License, which means you can:
 - Use them for personal stuff
 - Use them for commercial stuff
 - Change them however you like


... all for free, yo. In exchange, just give HTML5 UP credit for the design and tell your friends about it :)

More info [here](https://html5up.net/license).

**************************************************************************************************
# Gitlab and Terraform Mini-Project


# Application: static-website-Example

**static-website-Example** is a static website

# Objective of the mini project

- Make a Dockerfile to containerize the application
  
- Use Terraform to provision the production infrastructure on which the application will be deployed
- Create a CI/CD pipeline to:
    - Build the image from the Dockerfile
    - Test the image
    - Push the image into the Gitlab container registry
    - Deploy the application on:
         - the *staging* environment
         - the *review* environment at each *merge request*
         - the production environment when you merge onto the *master* branch
 
Deliverable

- Dockerfile
- Terraform modules (app and modules folder)
- File _.gitlab-ci.yml_
- File _/templates/deploy-review.gitlab-ci.yml_
- File _/templates/deploy-staging.gitlab-ci.yml_
- File _/templates/terraform.gitlab-ci.yml_
- _README.md_ file