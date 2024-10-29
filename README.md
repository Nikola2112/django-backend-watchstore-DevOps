Watch Store Architecture Project

 Overview
This project implements a scalable, secure architecture for an online watch store, focusing on managing backend services, static frontend content, and API integration. The key components include user authentication, product listings, and order processing, with a high emphasis on performance and scalability through AWS services.

 Architecture
The architecture is divided into the following main components:
- Public Subnet:
  - EC2 instances handle API requests and serve dynamic content.
- Private Subnet:
  - RDS (PostgreSQL) is used for storing persistent data, such as user details, product information, and order history.
  - ElastiCache (Redis) is integrated to cache session data and reduce database load, improving system performance.
- S3 and CloudFront:
  - Static content (frontend) is hosted on S3, and CloudFront is used to distribute this content globally with low latency and high transfer speeds.

 Tech Stack
- Backend: Django (Python) with PostgreSQL for the database.
- Cache Layer: Redis via AWS ElastiCache for session caching.
- Frontend: Static HTML/CSS served through Amazon S3 and accelerated by CloudFront.
- Infrastructure Management: Docker and Docker Compose for containerization, allowing easy deployment and scaling.
- Deployment: The backend and frontend are deployed using CI/CD pipelines via GitHub Actions, focusing on scalability using either EC2 or ECS (Elastic Container Service).

 Deployment
- Backend (EC2 or ECS):Dockerized Django app that manages business logic, with PostgreSQL for the database and Redis for session caching.
- Frontend (S3 + CloudFront): The static assets for the website are stored on S3, and CloudFront ensures fast global content delivery with caching.

 Features
- User Authentication:** Secure user login and registration process.
- Product Listings:** Display available watches for sale.
- Order Management:** Users can place orders, and the system processes them while storing the data in RDS.
- Caching with Redis:** Utilizes Redis to speed up session handling and database queries.
- Scalable Deployment:** Automated scaling and updates via CI/CD pipelines.

 CI/CD
- Separate pipelines are implemented for deploying the backend services (Django) and frontend (static content). The CI/CD pipelines ensure smooth and automated deployment through GitHub Actions, Docker, and ECS/EC2.

  How to Run
1. Clone the repository.
2. Set up environment variables for the backend and cache services.
3. Build and run Docker containers for all services (backend, database, and cache).
4. Deploy static frontend files to S3 and set up CloudFront for content delivery.
5. Push changes to trigger the CI/CD pipeline for automated deployment.

This project demonstrates the use of AWS services to build a highly available, scalable online store, focusing on performance optimization through caching and static content delivery via S3 and CloudFront.
