terraform {
  required_providers {
    githuhb = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "mattspahr-hashi"
}
