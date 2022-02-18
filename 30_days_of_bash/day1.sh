####------Create S3 Bucket-----####
#---------------------------------#

#!/bin/bash

aws s3api list-buckets

echo "Please verify in the list that your bucket exist or not if its not, then press 1 to 'create-bucket' or 0 to 'exit': "
read USERINPUT 
if [[ $USERINPUT -eq 1 ]]
then
   echo "Please enter the name of the bucket and make sure its unique name: "
   read BUCKETNAME
   aws s3api create-bucket --bucket=$BUCKETNAME
   aws s3api list-buckets
   echo "$BUCKET has been created."
else 
   exit
fi
