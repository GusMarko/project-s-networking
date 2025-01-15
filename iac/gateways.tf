# IGW for VPC's access to internet
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Internet Gateway"
    Environment = "${var.env}"
  }
}

# NAT gateway 
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "NAT Gateway"
    Environment = "${var.env}"
  }

  depends_on = [aws_internet_gateway.igw]
}

# Elastic ip for NAT 
resource "aws_eip" "eip" {
  domain   = "vpc"
} 