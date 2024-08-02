eb init -p node.js --region us-east-1 udagram-api-app

if aws elasticbeanstalk describe-environments --environment-names udagram-api-proj | grep -q 'udagram-api-proj'; then
  echo "Environment udagram-api-proj already exists. Skipping creation."
else
  eb create --sample udagram-api-proj
fi

eb use udagram-api-proj
eb deploy udagram-api-proj
