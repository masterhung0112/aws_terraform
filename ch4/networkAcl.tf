resource "aws_network_acl" "chp4_west" { 
    vpc_id = aws_vpc.chp4_west.id
    provider = aws.west

    egress {
        protocol = "tcp"
        rule_no = 200
        action = "allow" 
        cidr_block = "10.1.0.0/16" 
        from_port = 443
        to_port = 443
    }
    ingress {
        protocol = "tcp"
        rule_no = 100
        action = "allow" 
        cidr_block = "10.1.0.0/16" 
        from_port = 80
        to_port = 80
    }
    tags = {
        Name = "chp4_west"
    }
}