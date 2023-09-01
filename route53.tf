# get hosted zone details
data "aws_route53_zone" "hosted_zone" {
  name = var.domain_name #"wiz-obi.com"
}

# create a record set in route 53
resource "aws_route53_record" "site_domain" {
  zone_id = data.aws_route53_zone.hosted_zone.id
  name    = var.record_name #"www"
  type    = "A"

  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}