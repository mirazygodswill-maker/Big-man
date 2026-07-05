ec2_names = [
  "jacob-web1",
  "jacob-web2",
  "jacob-web3"
]

ami_id        = "06067086cf86c58e6"
instance_type = "t2.micro"

vpc_security_group_ids = [aws_security_group.allow_ssh.id]
