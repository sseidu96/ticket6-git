resource "aws_lightsail_instance" "test" {
  name              = "test-server"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "medium_1_0"
  availability_zone = "us-east-1b"
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html
              echo '<h2>This is modify by Safiatu Seidu</h2>'
              EOF 
}
