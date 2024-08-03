eb init udagram2-app --region us-east-1 --platform node.js
eb create udagram2-app-env --instance_profile EMR_EC2_DefaultRole --keyname aws-new --instance-types t2.medium --service-role aws-elasticbeanstalk-ec2-role
eb use udagram2-app-env
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE JWT_SECRET=$JWT_SECRET URL=$URL
eb deploy udagram2-app-env

