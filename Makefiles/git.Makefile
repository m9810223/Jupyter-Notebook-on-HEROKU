p: ## github
	git add -A
	git commit -m "$(shell date '+%Y/%m/%d %H:%M:%S')"
	git push -uq origin $(shell git branch --show-current)
