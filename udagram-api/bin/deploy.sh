eb init udacity-app --region us-east-1 --platform node.js
eb create Udagram-env
eb setenv PORT=3000
eb use Udagram-env
eb deploy Udagram-env
eb open Udagram-env
