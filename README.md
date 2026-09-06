# cafe-app quick start note
Step 1: Create an EC2 Instance with default values except for the following settings:
-	Name: café-app.
-	AMI: Amazon Linux 2023.
-	Instance type: t3.medium.
-	Keypair: Assign or create a key pair.
-	Network settings: Default VPC, public subnet with a public IP address. Its security group should allow http from anywhere and allow ssh at least from your workstation. 
-	Instance profile role: create an IAM role called café-app-role which has two managed policies and one inline policy. The two managed policies are AmazonS3ReadOnlyAccess and AmazonSSMManagedInstanceCore. An example of the inline policy is in the cafe-app-additional-permissions.json. Remember to replace `<`aws-account-id`>` with appropriate value.

Step 2: When the café-app instance is ready, connect to the instance using SSH client. Then, use install-basic.sh to install and configure a basic web server.

Step 3: Installing a dynamic website application on the EC2 instance
-	unzip setup.zip in your working directory. Then, change into the setup folder and run ./set-app-parameters.sh
-	Open the Secrets Manager console. From the panel on the left, choose Secrets and verify if there are seven parameters stores as secrets.
-	unzip db.zip. Then, change into the db folder and run ./set-root-password.sh and ./create-db.sh
-	unzip café.zip in to /var/www/html/ using the command: unzip café.zip -d /var/www/html/
-	move aws.zip and aws.phar into /var/www/html/café/ folder. Then run the command: unzip aws -d /var/www/html/café/ and the command: chmod -R +r /var/www/html/cafe/

