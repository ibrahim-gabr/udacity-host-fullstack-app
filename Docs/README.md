# Udagram Project

## Dependencies

### Frontend
- Node.js
- npm
- Angular

### Backend
- Node.js
- npm
- Express
- PostgreSQL

## AWS Cloud Setup

1. **Elastic Beanstalk**:
    - Initialize the application:
      ```sh
      eb init udagram2-app --region us-east-1 --platform node.js
      ```
    - Create the environment:
      ```sh
      eb create udagram2-app-env --instance_profile EMR_EC2_DefaultRole --keyname aws-new --instance-types t2.medium --service-role aws-elasticbeanstalk-ec2-role
      ```
    - Use the environment:
      ```sh
      eb use udagram2-app-env
      ```

2. **Environment Variables**:
    - Set environment variables:
      ```sh
      eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE JWT_SECRET=$JWT_SECRET URL=$URL
      ```

3. **Deployment**:
    - Deploy the application:
      ```sh
      eb deploy udagram2-app-env
      ```
- **Note**: The frontend application is deployed to the following URL: [http://udagram264208470401.s3-website-us-east-1.amazonaws.com/](http://udagram264208470401.s3-website-us-east-1.amazonaws.com/)

- **Note**: The backend application is deployed to the following URL: [http://udagram2-app-env.eba-hympqnvj.us-east-1.elasticbeanstalk.com](http://udagram2-app-env.eba-hympqnvj.us-east-1.elasticbeanstalk.com)

## Environment Variables

- `POSTGRES_USERNAME`
- `POSTGRES_PASSWORD`
- `POSTGRES_HOST`
- `POSTGRES_DB`
- `AWS_BUCKET`
- `AWS_REGION`
- `AWS_PROFILE`
- `JWT_SECRET`
- `URL`
- `PORT`

## CircleCI Configuration

### Orbs
- `circleci/node@5.0.2`
- `circleci/aws-elastic-beanstalk@2.0.1`
- `circleci/aws-cli@3.1.1`

### Jobs
- **build-and-deploy**:
    - Install Node.js and checkout code
    - Install frontend dependencies
    - Install backend dependencies
    - Lint frontend
    - Build frontend
    - Build backend
    - Setup Elastic Beanstalk
    - Setup AWS CLI
    - Deploy backend
    - Deploy frontend

### Workflows
- **udagram**:
    - Runs the `build-and-deploy` job on the `main` branch

## Pipeline

1. **Install Dependencies**:
    - Frontend:
      ```sh
      npm run frontend:install
      ```
    - Backend:
      ```sh
      npm run api:install
      ```

2. **Lint**:
    - Frontend:
      ```sh
      npm run frontend:lint
      ```

3. **Build**:
    - Frontend:
      ```sh
      npm run frontend:build
      ```
    - Backend:
      ```sh
      npm run api:build
      ```

4. **Deploy**:
    - Backend:
      ```sh
      npm run api:deploy
      ```
    - Frontend:
      ```sh
      npm run frontend:deploy
      ```