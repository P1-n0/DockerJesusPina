target "default"{
  context = "."
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/P1-n0/DockerJesusPina:latest"]
}

target "build" {
  dockerfile = "Dockerfile"
}

target "validate-build" {
  inherits = ["build"]
  call = "check"
}
