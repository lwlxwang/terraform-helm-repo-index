output "index_path" {
    value = "${data.external.helm_repo_index.result["index_path"]}"
}