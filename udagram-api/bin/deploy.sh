eb init udagram1-app --region us-east-1 --platform node.js
eb create udagram1-app-env
eb use udagram1-app-env
eb deploy udagram1-app-env

eb setenv PORT=3000
