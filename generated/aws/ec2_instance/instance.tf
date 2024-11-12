resource "aws_instance" "tfer--i-0df3bf2dd8babbba5_aws-web-server-paris" {
  ami                         = "ami-045a8ab02aadf4f88"
  associate_public_ip_address = "true"
  availability_zone           = "eu-west-3c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "1"
  }

  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "aws-web-server-paris"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.34.101"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "20"
    volume_type           = "gp3"
  }

  security_groups   = ["launch-wizard-2"]
  source_dest_check = "true"
  subnet_id         = "subnet-06a06fcfb28693989"

  tags = {
    Name = "aws-web-server-paris"
  }

  tags_all = {
    Name = "aws-web-server-paris"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-07b751b9821d4111a"]
}
