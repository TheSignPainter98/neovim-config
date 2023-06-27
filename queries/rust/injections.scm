; Embedded lua
(call_expression
  function: (field_expression
    field: (field_identifier) @_field (#eq? @_field "load")
  )
  arguments: (arguments
    (macro_invocation
	  macro: (identifier) @_macro (#eq? @_macro "chunk")
	  (token_tree) @lua (#offset! @lua 1 0 -1 0)
    )
  )
)
