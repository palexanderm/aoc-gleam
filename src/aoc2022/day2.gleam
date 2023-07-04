import gleam/string
import gleam/list

// A -> Rock -> 1
// B -> Paper -> 2
// C -> Scissors -> 3

// X -> Rock -> 1
// Y -> Paper -> 2
// Z -> Scissors -> 3

// Win -> 6
// Draw -> 3
// Lose -> 0

pub type Shape {
  Rock
  Paper
  Scissors
}

/// Part 1
/// What would your total score be if everything goes exactly according to your
/// strategy guide?
pub fn calculate_score(input) {
  input
  |> string.split("\n")
  |> list.fold(
    0,
    fn(total, round) {
      let [they_played, you_played] = string.split(round, " ")
      total + score_round(they_played, you_played)
    },
  )
}

fn score_round(theirs, yours) {
  let theirs = convert_shape(theirs)
  let yours = convert_shape(yours)
  score_for_shape(yours) + score_for_outcome(theirs, yours)
}

fn score_for_shape(shape) {
  case shape {
    Rock -> 1
    Paper -> 2
    Scissors -> 3
  }
}

fn score_for_outcome(theirs, yours) {
  case theirs, yours {
    Rock, Paper | Paper, Scissors | Scissors, Rock -> 6
    shape1, shape2 if shape1 == shape2 -> 3
    _, _ -> 0
  }
}

fn convert_shape(letter) {
  case letter {
    "A" | "X" -> Rock
    "B" | "Y" -> Paper
    "C" | "Z" -> Scissors
  }
}

/// Part 2
/// Following the Elf's instructions for the second column,
/// what would your total score be if everything goes exactly
/// according to your strategy guide?
pub fn calculate_score2(input) {
  input
  |> string.split("\n")
  |> list.fold(
    0,
    fn(total, round) {
      let [opponent, outcome] = string.split(round, " ")
      total + outcome_points(outcome, convert_shape(opponent))
    },
  )
}

fn outcome_points(outcome, opponent) {
  case outcome {
    "X" -> score_for_shape(must_lose(opponent)) + 0
    "Y" -> score_for_shape(opponent) + 3
    "Z" -> score_for_shape(must_win(opponent)) + 6
  }
}

fn must_lose(opponent) {
  case opponent {
    Rock -> Scissors
    Scissors -> Paper
    Paper -> Rock
  }
}

fn must_win(opponent) {
  case opponent {
    Scissors -> Rock
    Paper -> Scissors
    Rock -> Paper
  }
}
