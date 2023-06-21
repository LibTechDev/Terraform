terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "org-x7jp7ueHKAuUcpL5"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db_TF" {
  name    = "DEMO_DB_TF"
  comment = "Database for Snowflake Terraform demo"
}