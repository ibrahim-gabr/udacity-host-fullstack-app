## AWS Infrastructure

### RDS (Relational Database Service)
- **Service**: Amazon RDS for PostgreSQL
- **Instance Type**: db.t2.micro
- **Database Name**: `udagramdb`
- **Username**: `POSTGRES_USERNAME`
- **Password**: `POSTGRES_PASSWORD`
- **Endpoint**: `POSTGRES_HOST`
- **Port**: 5432

### Elastic Beanstalk (EB)
- **Service**: AWS Elastic Beanstalk
- **Platform**: Node.js
- **Application Name**: `udagram2-app`
- **Environment Name**: `udagram2-app-env`
- **Instance Type**: t2.medium
- **Region**: us-east-1
- **EB URL (Backend)**: [http://udagram2-app-env.eba-hympqnvj.us-east-1.elasticbeanstalk.com](http://udagram2-app-env.eba-hympqnvj.us-east-1.elasticbeanstalk.com)
- **Environment Variables**:
    - `POSTGRES_USERNAME`
    - `POSTGRES_PASSWORD`
    - `POSTGRES_HOST`
    - `POSTGRES_DB`
    - `AWS_BUCKET`
    - `AWS_REGION`
    - `AWS_PROFILE`
    - `JWT_SECRET`
    - `URL`

### S3 Bucket
- **Service**: Amazon S3
- **Bucket Name**: `udagram-frontend`
- **Region**: us-east-1
- **Website Hosting**: Enabled
- **Bucket URL**: [http://udagram264208470401.s3-website-us-east-1.amazonaws.com/](http://udagram264208470401.s3-website-us-east-1.amazonaws.com/)