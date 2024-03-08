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

<h3 align="left">*STEP 3: Now Attach this role to Ec2 instance that we created earlier, so we can provision cluster from that instance.</h3>
<h5 align="left">    -Click on Actions –> Security –> Modify IAM role</h5>
<h5 align="left">    -Select the Role that created earlier and click on Update IAM role</h5>

