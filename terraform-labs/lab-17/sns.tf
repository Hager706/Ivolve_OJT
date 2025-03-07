resource "aws_sns_topic" "cpu_alerts" {
  name = "cpu-alert-topic"
}
resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.cpu_alerts.arn
  protocol  = "email"
  endpoint  = "hagertarek706@gmail.com"  
}