import gleam/bool
import gleam/int
import gleam/list
import gleam/string
import aoc

type Range {
  Range(start: Int, end: Int)
}

/// Part 1
/// In how many assignment pairs does one range fully contain the other?
pub fn sum_fully_contained(input) {
  list.fold(
    aoc.read_input(input),
    0,
    fn(acc, pair) { sum_overlap(pair, is_contained, acc) },
  )
}

/// Part 2
/// In how many assignment pairs do the ranges overlap?
pub fn sum_any_overlap(input) {
  list.fold(
    aoc.read_input(input),
    0,
    fn(acc, pair) { sum_overlap(pair, is_overlapping, acc) },
  )
}

fn sum_overlap(pair, predicate, total) {
  let [left, right] = get_ranges(pair)
  bool.to_int(predicate(left, right)) + total
}

fn get_ranges(ranges) {
  ranges
  |> string.split(",")
  |> list.map(get_range)
}

fn get_range(range) {
  let assert Ok(#(start, end)) = string.split_once(range, "-")
  let assert Ok(start) = int.parse(start)
  let assert Ok(end) = int.parse(end)
  Range(start: start, end: end)
}

fn is_contained(left: Range, right: Range) {
  left.start >= right.start && left.end <= right.end || right.start >= left.start && right.end <= left.end
}

fn is_overlapping(left: Range, right: Range) {
  left.start >= right.start && left.start <= right.end || left.end >= right.start && left.end <= right.end || right.start >= left.start && right.start <= left.end || right.end >= left.start && right.end <= left.end
}
