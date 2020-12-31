resource "aws_route53_zone" "hungknowtk" {
  name = "hungknow.tk"

  tags = {
      Environment = "hungknow"
  }
}

#resource "aws_route53_record" "hungknowtk-ns" {
#  zone_id = aws_route53_zone.hungknowtk.zone_id
#  name = "hungknow.tk"
#  type = "NS"
#  ttl = "30"
#  records = aws_route53_zone.hungknowtk.name_servers
#}