;extends

; inline in clientside_callbacks
(call
  (identifier) @name (#eq? @name clientside_callback) 
  (argument_list 
    ((string (string_content) 
	     @injection.content 
	     (#set! injection.include-children)
	     (#set! injection.language "javascript")))
	)
)


(call
  (identifier) @name (#eq? @name clientside_callback) 
  (argument_list 
    (
     (binary_operator
       left:(string (string_content) 
	     @injection.content 
	     (#set! injection.include-children)
	     (#set! injection.language "javascript"))
       )
	))
)

; functions declared in dictionaries
(call
  function: (identifier) @dict_id (#eq? @dict_id "dict")
  arguments: (argument_list
	(keyword_argument
	  name: (identifier) @key (#eq? @key "function")
	  value: (string 
		(string_content) @injection.content
		(#set! injection.include-children)
		(#set! injection.language "javascript")
	))
  )
)
(dictionary
  (pair
	key: (string (string_content) @key (#eq? @key "function"))
	value: (string 
		(string_content) @injection.content
		(#set! injection.include-children)
		(#set! injection.language "javascript")
	)
  )
)

; if we use JavaScript as a type when declaring a string
(assignment
  type: (type (identifier) @type_id (#eq? @type_id JavaScript))
  right: (string 
	   (string_content) @injection.content
	   (#set! injection.include-children)
	   (#set! injection.language "javascript")
    )
)
