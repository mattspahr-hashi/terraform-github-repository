resource "github_repository" "gh_repo" {
  name       = var.repository_name
  visibility = var.visibility
}

resource "github_repository_file" "readme" {
  repository = github_repository.gh_repo.name
  branch     = "main"
  file       = "README.md"
  content = templatefile("${path.module}/templates/README.md", {
    repository_name = var.repository_name
  })
  commit_message      = "README.md"
  commit_author       = "Matt Spahr"
  commit_email        = "matt.spahr@hashicorp.com"
  overwrite_on_create = true
}
