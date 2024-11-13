Watch Store Architecture Project

Overview
This project implements a scalable, secure architecture for an online watch store, focusing on managing backend services, static frontend content, and API integration. The key components include user authentication, product listings, and order processing, with a high emphasis on performance and scalability through AWS services.

Architecture
The architecture is divided into the following main components:

Public Subnet:
EC2 instances handle API requests and serve dynamic content.
Private Subnet:
RDS (PostgreSQL) is used for storing persistent data, such as user details, product information, and order history.
ElastiCache (Redis) is integrated to cache session data and reduce database load, improving system performance.
S3 and CloudFront:
Static content (frontend) is hosted on S3, and CloudFront is used to distribute this content globally with low latency and high transfer speeds.
Tech Stack
Backend: Django (Python) with PostgreSQL for the database.
Cache Layer: Redis via AWS ElastiCache for session caching.
Frontend: Static HTML/CSS served through Amazon S3 and accelerated by CloudFront.
Infrastructure Management: Docker and Docker Compose for containerization, allowing easy deployment and scaling.
Deployment: The backend and frontend are deployed using CI/CD pipelines via GitHub Actions, focusing on scalability using either EC2 or ECS (Elastic Container Service).
Infrastructure Management with Terraform
Terraform is used to automate and manage the infrastructure for the online store. The following AWS resources are provisioned and managed using Terraform:

EC2 Instances (Public Subnet):

Terraform provisions EC2 instances in a public subnet to host the backend Django app and manage API requests.
RDS (PostgreSQL):

Terraform provisions an RDS instance in a private subnet to store persistent data, ensuring security and scalability.
ElastiCache (Redis):

Terraform provisions ElastiCache for caching, improving performance by reducing database load.
S3 and CloudFront:

Terraform configures S3 to host static assets (frontend files) and CloudFront to ensure fast global delivery of content.
Security Groups and VPC:

Terraform defines VPC settings and security groups to control access between resources, ensuring a secure and isolated environment.
Auto Scaling (EC2 or ECS):

Terraform provisions auto-scaling groups for backend EC2 instances or configures ECS for containerized backend services, ensuring the application can scale with demand.
Deployment
Backend (EC2 or ECS):
Dockerized Django app that manages business logic, with PostgreSQL for the database and Redis for session caching.
Frontend (S3 + CloudFront):
The static assets for the website are stored on S3, and CloudFront ensures fast global content delivery with caching.
Features
User Authentication: Secure user login and registration process.
Product Listings: Display available watches for sale.
Order Management: Users can place orders, and the system processes them while storing the data in RDS.
Caching with Redis: Utilizes Redis to speed up session handling and database queries.
Scalable Deployment: Automated scaling and updates via CI/CD pipelines.
CI/CD
Separate pipelines are implemented for deploying the backend services (Django) and frontend (static content). The CI/CD pipelines ensure smooth and automated deployment through GitHub Actions, Docker, and ECS/EC2.

How to Run
Clone the repository.
Set up environment variables for the backend and cache services.
Build and run Docker containers for all services (backend, database, and cache).
Deploy static frontend files to S3 and set up CloudFront for content delivery.
Push changes to trigger the CI/CD pipeline for automated deployment.
Terraform Setup:
Install Terraform.
Configure Terraform with AWS credentials.
Initialize Terraform and apply the configuration to provision the necessary AWS resources:
Run terraform init to initialize the configuration.
Run terraform apply to create and manage the infrastructure as defined.

This project demonstrates the use of AWS services to build a highly available, scalable online store, focusing on performance optimization through caching and static content delivery via S3 and CloudFront.
