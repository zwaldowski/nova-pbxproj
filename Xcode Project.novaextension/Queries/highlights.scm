(line_comment) @comment.line
(block_comment) @comment.block

(number) @value.number

(string) @string

(escape_sequence) @string.escape

(dictionary_entry
  key: (string) @identifier.key)

(data) @string.special
(byte) @value.number

[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  ";"
] @punctuation.delimiter

"=" @operator

(quoted_string
  "\"" @string.delimiter.left
  "\"" @string.delimiter.right)

(data
  "<" @string.special.delimiter.left
  ">" @string.special.delimiter.right)
