module "helm_repo_index" {
    source      = "../"
    dir     = "${path.module}/myrepo"
    url     = "https://charts.example.com/mycharts"
}

output "helm_chart_archive_path" {
    value = "${module.helm_repo_index.index_path}"
}