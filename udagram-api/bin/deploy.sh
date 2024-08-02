eb init -p node.js --region us-east-1 udagram-api-app

if aws elasticbeanstalk describe-environments --environment-names udagram-api-proj | grep -q 'udagram-api-proj'; then
  echo "Environment udagram-api-proj already exists. Skipping creation."
else
  eb create --sample udagram-api-proj
fi

eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET JWT_SECRET=$JWT_SECRET

eb use udagram-api-proj
eb deploy udagram-api-proj
