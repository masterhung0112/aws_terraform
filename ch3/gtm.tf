resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.hungknowtk.zone_id
  name = "hungknow.tk"
  type = "A"
  ttl = "300"
  records = [
    aws_instance.cheap_worker.public_ip,
    aws_instance.cheap_worker_west.public_ip
  ]
}