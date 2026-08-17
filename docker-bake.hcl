target "default"{
  context = "."
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/p1-n0/dockerjesuspina:latest"]
}

target "build" {
  dockerfile = "Dockerfile"
}

target "validate-build" {
  inherits = ["build"]
  call = "check"
}
