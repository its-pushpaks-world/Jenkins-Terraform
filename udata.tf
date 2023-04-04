variable "udata" {
  type = string
  # Using Heredoc format to store userdata
  default = <<EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install -y httpd
      sudo systemctl start httpd
      sudo systemctl enable httpd
      echo "your very first web server" > /var/www/html/index.html
      EOF
}