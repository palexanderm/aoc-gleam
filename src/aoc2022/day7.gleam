import gleam/int
import gleam/list
import gleam/string
import aoc

type Dir {
  Dir(name: String, size: Int)
}

/// Part 1
/// Find all of the directories with a total size of at most 100000.
/// What is the sum of the total sizes of those directories?
pub fn sum_dirs_at_most_100000(input) {
  input
  |> aoc.read_input()
  |> walk_filesystem([])
  |> list.fold(0, fn(acc, dir) { todo })
  // |> list.fold(
  //   0,
  //   fn(acc, dir) {
  //     case dir.size <= 100_000 {
  //       True -> acc + dir.size
  //       False -> acc
  //     }
  //   },
  // )
}

fn walk_filesystem(commands, dirs) {
  case commands {
    [] -> dirs

    ["$ cd " <> dirname, "$ ls", ..rest] -> {
      let #(remaining, dirs2) = sum_dir(rest, Dir(name: dirname, size: 0), [])
      walk_filesystem(remaining, list.append(dirs2, dirs))
    }

    [_, ..rest] -> walk_filesystem(rest, dirs)
  }
}

fn sum_dir(contents, dir, dirs) {
  case contents {
    [] | ["$ " <> _command, ..] -> #(contents, [dir, ..dirs])

    // sum subdirectory
    ["dir " <> subdir, ..rest] -> {
      let #(_, subdirs) = sum_subdir(rest, Dir(name: subdir, size: 0), [])
      let size = list.fold(subdirs, 0, fn(acc, dir: Dir) { acc + dir.size })
      sum_dir(rest, Dir(..dir, size: dir.size + size), dirs)
    }

    // list.append(subdirs, dirs),
    [file, ..rest] -> {
      let assert Ok(#(file_size, _file_name)) = string.split_once(file, " ")
      let assert Ok(size) = int.parse(file_size)
      sum_dir(rest, Dir(..dir, size: dir.size + size), dirs)
    }
  }
}

fn sum_subdir(output, dir, subdirs) {
  let Dir(name: dirname, ..) = dir
  case output {
    [] | ["$ " <> _, ..] -> {
      let size = list.fold(subdirs, 0, fn(acc, dir: Dir) { acc + dir.size })
      #(output, [Dir(..dir, size: dir.size + size), ..subdirs])
    }

    ["$ cd " <> name, "$ ls", ..rest] if name == dirname ->
      sum_dir(rest, dir, subdirs)

    [_, ..rest] -> sum_subdir(rest, dir, subdirs)
  }
}
