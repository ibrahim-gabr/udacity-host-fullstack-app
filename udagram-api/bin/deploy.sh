eb init -p node.js --region us-east-2 udagram-api

if aws elasticbeanstalk describe-environments --environment-names udagram-api-env | grep -q 'udagram-api-env'; then
  echo "Environment udagram-api-env already exists. Skipping creation."
else
  eb create --sample udagram-api-env
fi

eb use udagram-api-env
eb deploy udagram-api-env
