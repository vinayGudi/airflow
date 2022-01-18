

resource "aws_mwaa_environment" "example" {
  dag_s3_path        = var.dag_s3_path
  execution_role_arn = var.execution_role_arn

  logging_configuration {
    dag_processing_logs {
      enabled   = true
      log_level = "DEBUG"
    }

    scheduler_logs {
      enabled   = true
      log_level = "INFO"
    }

    task_logs {
      enabled   = true
      log_level = "WARNING"
    }

    webserver_logs {
      enabled   = true
      log_level = "ERROR"
    }

    worker_logs {
      enabled   = true
      log_level = "CRITICAL"
    }
  }

  name = var.name

  network_configuration {
    security_group_ids = [var.sg_id]
    subnet_ids         = [var.private_subnet_1, var.private_subnet_2]
  }

  source_bucket_arn = var.source_bucket_arn
  tags = {
    Owner       = "search-platform-dev"
    Environment = "dev"
  }
}
