<img align="center" width="1200" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Mario_Series_Logo.svg/800px-Mario_Series_Logo.svg.png">


<h1 align="center">Deploying Super Mario on Kubernetes</h1>

<h3 align="center">We’ll explore how to deploy a Super Mario game on Amazon’s Elastic Kubernetes Service (EKS). Utilizing Kubernetes, we can orchestrate the game’s deployment on AWS EKS, allowing for scalability, reliability, and easy management.</h3>


<img align="right" alt="Coding" width="400" src="https://i.pinimg.com/originals/e7/26/c7/e726c74ac081eed50feee1433d12c998.gif">


- Prerequisites:
- An Ubuntu Instance
- IAM role
- Terraform should be installed on instance
- AWS CLI and KUBECTL on Instance



<h3 align="left">*STEP 1: Launch Ubuntu instance</h3>

<h3 align="left">*STEP 2: Create IAM role</h3>

<h5 align="left">    -Click on Create Role</h5>
<h5 align="left">    -Use case as EC2 and click on Next</h5>
<h5 align="left">    -For permission policy select Administrator Access (Just for learning purpose), click Next</h5>
<h5 align="left">    -Provide a Name for Role and click on Create role</h5>

<h3 align="left">*STEP 3: Now Attach this role to Ec2 instance that we created earlier, so we can provision cluster from that instance</h3>
<h5 align="left">    -Click on Actions –> Security –> Modify IAM role</h5>
<h5 align="left">    -Select the Role that created earlier and click on Update IAM role</h5>



<h3 align="left">*STEP 4: STEP 3: Cluster provision</h3>
<h5 align="left"> git clone https://github.com/nidhi-ashtikar/Super-Mario-on-Kubernetes.git</h5>
<h5 align="left"> cd Super-Mario-on-Kubernetes </h5>
<h5 align="left"> sudo chmod +x script.sh</h5>
<h5 align="left"> ./script.sh</h5>
<h5 align="left">This script will install Terraform, AWS cli, Kubectl, Docker </h5>


<h3 align="left">*STEP 5: Run Terraform init  </h3>
<h5 align="left"> cd Terraform </h5>
<h5 align="left"> terraform init</h5>
<h5 align="left"> terraform validate </h5>
<h5 align="left"> terraform plan </h5>
<h5 align="left"> terraform apply  </h5>



<h3 align="left">*STEP 6: Update the Kubernetes configuration </h3>
<h5 align="left"> aws eks update-kubeconfig --name <EKS_NAME> --region us-east-1 </h5>
<h5 align="left"> Now change directory back to Super-Mario-on-Kubernetes </h5>
<h5 align="left"> Deployment- kubectl apply -f deployment.yaml </h5>
<h5 align="left">Service - kubectl apply -f service.yaml </h5>


<h3 align="left">*STEP 7: Now let’s describe the service and copy the LoadBalancer Ingress </h3>

<h5 align="left"> kubectl describe service mario-service </h5>
<h5 align="left"> Paste the ingress link in a browser and you will see the Mario game. </h5>

<h2 align="left"> Let’s Go back to 1985 and play the game like children.</h2>

