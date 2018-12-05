# Helm Repo Index
Create an `index.yaml` file for a Helm repo

## Example
```terraform
module "helm_repo_index" {
    source      = "rojopolis/repo-index/helm"
    dir     = "${path.module}/myrepo"
    url     = "https://charts.example.com/mycharts"
}

output "helm_chart_archive_path" {
    value = "${module.helm_repo_index.index_path}"
}
```

## External Dependencies
1. Python3.4+
2. [Helm](https://docs.helm.sh/using_helm/#installing-helm)