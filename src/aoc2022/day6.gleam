import gleam/string

/// Part 1
/// How many characters need to be processed before the first start-of-packet
/// marker is detected?
pub fn start_of_packet_marker(input) {
  get_unique_sequence_processed_count(input, 4, "", 0)
}

/// Part 2
/// How many characters need to be processed before the first start-of-message
/// marker is detected?
pub fn start_of_message_marker(input) {
  get_unique_sequence_processed_count(input, 14, "", 0)
}

fn get_unique_sequence_processed_count(datastream, seq_length, seq, processed) {
  let assert Ok(#(char, stream)) = string.pop_grapheme(datastream)

  case string.byte_size(seq), string.contains(seq, char) {
    len, _ if len == seq_length -> processed

    _, False ->
      get_unique_sequence_processed_count(
        stream,
        seq_length,
        seq <> char,
        processed + 1,
      )

    _, True -> {
      let assert Ok(#(_, new_seq)) = string.split_once(seq, char)
      get_unique_sequence_processed_count(
        stream,
        seq_length,
        new_seq <> char,
        processed + 1,
      )
    }
  }
}
