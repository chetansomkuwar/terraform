resource "aws_lb_target_group" "test" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-000bd6ceea0bbd16c"
}


resource "aws_lb" "instance_lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.my_sg.id]
  subnets            = [ "subnet-0aa098564940dff94" , "subnet-0ef8f91620e7e2687" ]
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.instance_lb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}

resource "aws_lb_target_group_attachment" "test" {
    count = length(aws_instance.web-server)
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.web-server[count.index].id
  port             = 80
}