#!/usr/bin/env bats

@test "git binary is found in PATH" {
  run which chef-solo
  [ "$status" -eq 0 ]
}