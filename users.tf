############ varibale examples files ###############
resource "aws_iam_user" "reference1" {
 name = var.string_var
  tags = {
    tag-key = "new-user1"
  }
}
    