x: ## chmod +x **/*.sh
	@chmod +x **/*.sh

h: ## list commands
	@perl -nle'print $& if m{^[a-zA-Z0-9_-]+:.*?## .*$$}' \
		$(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; \
		{printf "make %-8s -> %s\n", $$1, $$2}'
