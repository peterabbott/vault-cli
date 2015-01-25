#!/usr/bin/env bats

@test "vlt cli is found in PATH" {
  run vlt --version
  [ "$status" -eq 0 ]
}
