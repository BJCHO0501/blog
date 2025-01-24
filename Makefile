SCRIPT = sh create-md-file.sh

all:
	@echo "make post NAME=<name>"
	@echo "make postopen NAME=<name>"

post:
	@$(SCRIPT) $(NAME)

postopen:
	@$(SCRIPT) $(NAME)
	@code contents/posts/$(NAME)/index.md
