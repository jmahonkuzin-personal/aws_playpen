provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dashboard" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (update as needed)
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl enable httpd
              systemctl start httpd
              cd /var/www/html
              echo "<h1>Dashboard deployed!</h1>" > index.html
              EOF

  tags = {
    Name = "DashboardEC2"
  }
}