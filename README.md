###  Batect - nginx hosted app on heroku with terraform
Requires some environment variables to be provided. I used a git ignored envSource.sh for mine. 

`HEROKU_API_KEY` api key for doing stuff with heroku
`APP_NAME` the name the app will get in heroku
`TERRAFORM_REMOTE_DB_URL` where we'll be storing the terraform state. You can get this after the pg db has been created 
