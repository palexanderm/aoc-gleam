import gleam/bit_string
import gleam/list
import gleam/string

/// Part 1
/// Find the item type that appears in both compartments of each rucksack.
/// What is the sum of the priorities of those item types?
pub fn sum_priorities(input) {
  let total_priorities = fn(priorities, items) {
    let items = string.trim(items)
    let amount = string.length(items) / 2
    let first = string.slice(items, 0, amount)
    let second = string.slice(items, amount, amount)
    priorities + get_priority(find_common(first, second))
  }

  input
  |> string.split("\n")
  |> list.fold(0, total_priorities)
}

fn find_common(first, second) {
  let assert Ok(#(char, rest)) = string.pop_grapheme(first)
  case string.contains(second, char) {
    True -> char
    False -> find_common(rest, second)
  }
}

fn get_priority(letter) {
  case bit_string.from_string(letter) {
    <<cp:8>> if cp >= 65 && cp <= 90 -> cp - 38
    <<cp:8>> if cp >= 97 && cp <= 122 -> cp - 96
    _ -> panic
  }
}

/// Part 2
/// Find the item type that corresponds to the badges of each three-Elf group.
/// What is the sum of the priorities of those item types?
pub fn sum_priorities2(input) {
  input
  |> string.split("\n")
  |> sum_group_priorities(0)
}

fn sum_group_priorities(items, priorities) {
  case items {
    [] -> priorities
    [a, b, c, ..rest] -> {
      let badge = find_badge(a, [b, c])
      sum_group_priorities(rest, get_priority(badge) + priorities)
    }
  }
}

fn find_badge(items, groups) {
  let assert Ok(#(char, rest)) = string.pop_grapheme(items)
  case list.all(groups, fn(group) { string.contains(group, char) }) {
    True -> char
    False -> find_badge(rest, groups)
  }
}
