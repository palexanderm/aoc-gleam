import gleam/int
import gleam/list
import gleam/map
import gleam/string

/// Part 1
/// After the rearrangement procedure completes, what crate ends up on top of
/// each stack?
pub fn top_crates(input) {
  let merger = fn(move, existing) { list.append(list.reverse(move), existing) }
  get_top_crates(input, merger)
}

/// Part 2
/// Before the rearrangement process finishes, update your simulation so that the
/// Elves know where they should stand to be ready to unload the final supplies.
/// After the rearrangement procedure completes, what crate ends up on top of
/// each stack?
pub fn top_crates2(input) {
  let merger = fn(move, existing) { list.append(move, existing) }
  get_top_crates(input, merger)
}

fn get_top_crates(input, merger) {
  let [drawing, instructions] = string.split(input, "\n\n")
  let stacks = build_stacks(string.split(drawing, "\n"))
  let final_stacks =
    list.fold(
      string.split(instructions, "\n"),
      stacks,
      fn(acc, instruction) { rearrange(acc, instruction, merger) },
    )

  map.fold(
    final_stacks,
    "",
    fn(acc, _key, crates) {
      let [item, ..] = crates
      acc <> item
    },
  )
}

fn rearrange(stacks, instruction, merger) {
  let ["move", count, "from", from, "to", to] = string.split(instruction, " ")
  let assert Ok(count) = int.parse(count)
  let assert Ok(crates) = map.get(stacks, from)
  let #(move, remaining) = list.split(crates, count)
  let assert Ok(existing) = map.get(stacks, to)

  stacks
  |> map.insert(from, remaining)
  |> map.insert(to, merger(move, existing))
}

fn build_stacks(data) {
  data
  |> list.reverse()
  |> list.map(string.to_graphemes)
  |> list.transpose()
  |> list.fold(
    map.new(),
    fn(acc, row) {
      case row {
        [" ", ..] -> acc
        [stack_num, ..crates] ->
          map.insert(
            acc,
            stack_num,
            list.reverse(list.filter(crates, fn(item) { item != " " })),
          )
      }
    },
  )
}
