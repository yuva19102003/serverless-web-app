# SERVERLESS WEB APP

## Project Overview

This serverless web application is meticulously crafted around a three-tier microservices architecture, seamlessly integrating various AWS services. The application boasts a feature-rich frontend, deployed onto S3 and gracefully delivered through CloudFront. The backend, a Python marvel employing Boto3 modules, resides comfortably within AWS Lambda. DynamoDB, the robust NoSQL database, stores and manages data with finesse, while the glue holding everything together is a well-designed REST API orchestrated via AWS API Gateway.

<img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/webpage.png">

## Infrastructure of the project

```
.
├── BACKEND
│   ├── backend
│   │   ├── table.py
│   │   └── zip
│   │       └── table.zip
│   ├── graph.sh
│   ├── main.tf
│   ├── modules
│   │   ├── dynamodb
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   └── variable.tf
│   │   └── lambda
│   │       ├── main.tf
│   │       ├── output.tf
│   │       └── variable.tf
│   ├── output.tf
│   ├── terraform-backend-infrastructure.png
│   ├── terraform.tfstate
│   └── terraform.tfstate.backup
├── FRONTEND
│   ├── graph.sh
│   ├── main.tf
│   ├── output.tf
│   ├── terraform-frontend-infrastructure.png
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── website
│       ├── img
│       │   ├── bg1.gif
│       │   └── bg.gif
│       ├── index.html
│       ├── main.js
│       └── style.css
└── infrastructure-tree.txt

9 directories, 26 files
```



## Deployment Process

1. **Frontend:**
   - Crafted with HTML, CSS, and JavaScript.
   - Deployed onto S3 and elegantly presented via CloudFront.
   - s3 bucket
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/s3.png">
   - cloudfront
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/cloudfront.png">

2. **Backend:**
   - Written in Python and powered by Boto3 modules.
   - Finds its home on AWS Lambda, ensuring efficient and scalable execution.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/lambda.png">

3. **DynamoDB:**
   - The NoSQL database solution, providing flexibility and reliability.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/dynamodb.png">

4. **API Gateway:**
   - A robust REST API facilitating seamless communication between the frontend and backend.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/api-gateway.png">

## Testing Procedures

1. **Backend Local Testing:**
   - Rigorous testing facilitated by AWS Lambda's test events ensures backend functionality is robust and reliable.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/lambda-testing.png">

2. **API Testing with Postman:**
   - The API's functionality is meticulously validated using Postman, ensuring smooth and predictable interactions.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/postman-api-testing.png">
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/api-test-result.png">

3. **Local Frontend Testing:**
   - The frontend is seamlessly connected to the API on localhost for thorough local testing, ensuring a flawless user experience.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/frontend%20testing.png">

4. **CDN Testing:**
   - Rigorous testing under CDN conditions guarantees global accessibility and optimal performance.
   - <img src="https://github.com/yuva19102003/serverless-web-app/blob/master/screenshots/cdn-testing.png">

## Additional Information

- Ensure placeholder variables in Terraform files are replaced with actual values.
- Delve into specific Terraform files for detailed configurations tailored to your needs.
- For any further guidance, refer to the extensive documentation provided by AWS.

Feel free to tailor and enrich this README to perfectly suit your application and development process.
