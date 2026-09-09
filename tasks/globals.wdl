version 1.0

struct GlobalVariables {
  String ubuntu_docker
  String monitoring_script
  String ugbio_core_docker
  String ugbio_mrd_docker
  String ugbio_featuremap_docker
}
workflow Globals {
  input {
  GlobalVariables glob ={
        "ubuntu_docker": "/.mounts/labs/gsi/testdata/mrd_featuremap/docker_images/ubuntu.sif",
        "monitoring_script": "/.mounts/labs/gsi/testdata/mrd_featuremap/input_data/monitor_1.0.sh",
        "ugbio_core_docker": "/.mounts/labs/gsi/testdata/mrd_featuremap/docker_images/ugbio_core.sif",
        "ugbio_mrd_docker": "/.mounts/labs/gsi/testdata/mrd_featuremap/docker_images/ugbio_mrd_docker.sif",
        "ugbio_featuremap_docker": "/.mounts/labs/gsi/testdata/mrd_featuremap/docker_images/ugbio_featuremap_docker.sif"
}
}

  output {
    GlobalVariables global_dockers = glob
  }
}
