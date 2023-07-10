zip -r "flaskbb_deploy-$1.zip" ./flaskbb ./.ebextensions wsgi.py setup.py setup.cfg requirements.txt flaskbb.cfg celery_worker.py

aws s3 cp "flaskbb_deploy-$1.zip" s3://ilkcan-flaskbb

aws elasticbeanstalk create-application-version --application-name flaskbb --source-bundle S3Bucket="ilkcan-flaskbb",S3Key="flaskbb_deploy-$1.zip" --version-label "ver-$1" --description "file permissions" --region "eu-north-1"

aws elasticbeanstalk update-environment --environment-name flaskbb-environment --version-label "ver-$1" --region "eu-north-1"