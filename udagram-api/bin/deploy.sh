eb init udagram2-app --region us-east-1 --platform node.js --instance_profile EMR_EC2_DefaultRole --keyname aws-new --instance-types t2.medium --service-role aws-elasticbeanstalk-ec2-role
eb create udagram2-app-env
eb use udagram2-app-env
eb deploy udagram2-app-env

eb setenv PORT=$PORT JWT_SECRET=$JWT_SECRET POSTGRESS_USERNAME=$POSTGRESS_USERNAME POSTGRESS_PASSWORD=$POSTGRESS_PASSWORD POSTGRESS_DB=$POSTGRESS_DB POSTGRESS_HOST=$POSTGRESS_HOST AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET URL=$URL
