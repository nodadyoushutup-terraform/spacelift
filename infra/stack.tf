# stack.tf

resource "spacelift_stack" "stack" {
  for_each = local.spacelift.stack

  space_id = spacelift_space.infra.id
  administrative  = each.value.administrative
  autodeploy = each.value.autodeploy
  branch = each.value.branch
  description = each.value.description
  name = each.value.name
  repository = each.value.repository
  project_root = each.value.project_root
  terraform_version = each.value.terraform_version
  labels = each.value.labels
  github_enterprise { 
    namespace = each.value.enterprise
  }
}