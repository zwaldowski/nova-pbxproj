(dictionary
	"{" @start
	"}" @end)

(array
  "(" @start
  ")" @end)

(
  (
    (block_comment) @text
    (#match? @text "^/\\* Begin [A-Za-z0-9_]+ section \\*/$")
  ) @start
  (#set! role block)
  (#set! scope.byLine)
)

(
  (block_comment) @text
  (#match? @text "^/\\* End [A-Za-z0-9_]+ section \\*/$")
) @end
