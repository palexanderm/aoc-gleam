import gleam/io
import gleam/list
import gleam/string

pub fn main() {
  io.println("Hello from aoc!")
}

pub fn read_input(input) {
  input
  |> string.split("\n")
  |> list.map(string.trim)
}
