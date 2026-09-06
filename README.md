# cafe-app quick start note
Step 1: Create an EC2 Instance with default values except for the following settings:
-	Name: café-app.
-	AMI: Amazon Linux 2023.
-	Instance type: t3.medium.
-	Keypair: Assign or create a key pair.
-	Network settings: Default VPC, public subnet with a public IP address. Its security group should allow http from anywhere and allow ssh at least from your workstation. 
-	Instance profile role: create an IAM role called café-app-role which has two managed policies and one inline policy. The two managed policies are AmazonS3ReadOnlyAccess and AmazonSSMManagedInstanceCore. An example of the inline policy is in the cafe-app-additional-permissions.json. Remember to replace `<`aws-account-id`>` with appropriate value.

