terraform {
  backend "pg" {
  }
}
provider "heroku" {
  version = "~> 2.1"
}

variable "web_app_name" {
  description = "Name of the web app"
}

resource "heroku_app" "web_app" {
  name   = "${var.web_app_name}"
  region = "us"
  stack = "container"
}
