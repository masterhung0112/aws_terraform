resource "aws_instance" "example" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
  availability_zone  = "us-west-2a"
}
output "id" {
  value = "${aws_instance.example.id}"
}