# Project hosting a static E-comm Web Application Using AWS S3

## Project Overview
- In this project, we will explore the process of hosting a static E-commerce web application on Amazon Web Services (AWS). Static websites are ideal for E-commerce applications that do not require server-side processing or dynamic content generation, as they offer fast performance, low cost, and simplified maintenance. By leveraging AWS services such as Amazon S3 for hosting, Amazon CloudFront for content delivery, and optionally, EC2 instances for more customization, we will create a scalable and highly available infrastructure for our E-commerce application.

## Project Implementation

**Setting Up AWS S3 Bucket**
- Create a AWS S3 bucket to store the static file of the E-commerce website
- Configure bucket policies

**Configuring AWS CloudFront**
- Create a CloudFront distribution with the S3 bucket as the origin.
- Configure caching behaviour, default root object, and SSL certificate using AWS Certificate Manager.
- Specify the distribution for global content delivery.

**Alternatively,Deploying on EC2 Instance**
- Launch the EC2 instance in the desired region, ensuri g it meets the necessary specifications for hiosting the web application.
- Access the EC2 instance using SSH.
- Clone the code base of the E-comm web application from Github onto the EC2 instance.
- Install and configure a web server(eg., Apache HTTP server,Nginx) on the EC2 instance.
- Set up the document root of the web server to point to the directory containing the cloned codebase.

**Securing the Website with IAM**
- Create IAM roles and policies to control access to AWS resources.
- Define permissions for accessing S3 buckets and CloudFront distributions.
- Assign IAM roles to EC2 instances for secure interactions with AWS services.

**Configuring Security Groups and Firewall**
- Define appropriate security groups for the EC2 instance to control inbound and outbound traffic.
- Configure firewall rules to allow HTTP/HTTPS traffic to reach the web server running on the EC2 instance.
- Ensure that only necessary ports are open and accessible from the internet, following best practices for security.

**Accessing the Web Application**
- Access the E-commerce web application through the CloudFront distribution URL and the public IP address or domain name associated with the EC2 instance.
- Verify that the website is accessible and functioning correctly in both hosting environments.
