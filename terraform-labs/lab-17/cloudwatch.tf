resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {
  alarm_name                = "cpu-utilization"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 60
  statistic                 = "Average"
  threshold                 = 70
  alarm_description         = "This metric monitors ec2 cpu utilization"
  actions_enabled    = true
  alarm_actions      = [aws_sns_topic.cpu_alerts.arn]

  dimensions = {
       InstanceId = aws_instance.web_server.id
     }
}