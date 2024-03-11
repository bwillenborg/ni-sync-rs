#!/usr/bin/bash

OUTPUT_FILE='src/bindings.rs'
INCLUDE_FILE='include/wrapper.h'
HEADER_DIRS='/usr/include/ni-visa/'
TYPE_PATTERN='NISYNC.*'
FUNCTION_PATTERN='niSync.*'
VAR_PATTERN='NISYNC.*'

bindgen "$INCLUDE_FILE" \
	-o "$OUTPUT_FILE" \
	--allowlist-type "$TYPE_PATTERN" \
	--allowlist-function "$FUNCTION_PATTERN" \
	--allowlist-var "$VAR_PATTERN" \
	--default-macro-constant-type signed \
	-- \
	-I "$HEADER_DIRS"
