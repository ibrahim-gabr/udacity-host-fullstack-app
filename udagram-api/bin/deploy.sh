eb init -p node.js --region us-east-1 udagram-api
eb create --sample udagram-api-env
eb use udagram-api-env
eb deploy udagram-api-env
