target "build" {
  dockerfile = "Dockerfile"
}

target "validate-build" {
  inherits = ["build"]
  call = "check"
}
