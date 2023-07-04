import gleam/function
import gleam/int
import gleam/io
import gleam/list
import gleam/string

/// Part 1 
/// Find the Elf carrying the most Calories. 
/// How many total Calories is that Elf carrying?
pub fn max_sum_calories(input) {
  input
  |> string.split(on: "\n")
  |> sum_calories([])
  |> list.fold(0, int.max)
  |> function.tap(fn(max) {
    io.debug("Most total calories carried by an elf: " <> int.to_string(max))
  })
}

/// Part 2
/// Find the top three Elves carrying the most Calories.
/// How many Calories are those Elves carrying in total?
pub fn top3_sum_calories(input) {
  let get_top3 = fn(top3, sum) {
    case top3 {
      #(a, b, _c) if sum > a -> #(sum, a, b)
      #(a, b, _c) if sum > b -> #(a, sum, b)
      #(a, b, c) if sum > c -> #(a, b, sum)
      _ -> top3
    }
  }

  let #(a, b, c) =
    input
    |> string.split(on: "\n")
    |> sum_calories([])
    |> list.fold(#(0, 0, 0), get_top3)

  function.tap(
    a + b + c,
    fn(top3) {
      io.debug(
        "Total calories carried by top three elves: " <> int.to_string(top3),
      )
    },
  )
}

fn sum_calories(data, sums) {
  case data {
    [] -> sums
    ["", ..rest] -> sum_calories(rest, [0, ..sums])
    [calories, ..rest] -> {
      let assert Ok(amount) = int.parse(string.trim(calories))
      let new_sums = case sums {
        [] -> [amount]
        [sum, ..tail] -> [sum + amount, ..tail]
      }
      sum_calories(rest, new_sums)
    }
  }
}
