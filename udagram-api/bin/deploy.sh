eb init -p node.js --region us-east-1 udagram-api-app

if aws elasticbeanstalk describe-environments --environment-names udagram-api-backend | grep -q 'udagram-api-backend'; then
  echo "Environment udagram-api-backend already exists. Skipping creation."
else
  eb create --sample udagram-api-backend
fi

eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET JWT_SECRET=$JWT_SECRET

eb use udagram-api-backend
eb deploy udagram-api-backend
