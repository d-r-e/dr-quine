NAME = Colleen

SRC = Colleen.c

OBJ = Colleen.o


$(NAME): $(OBJ)
	gcc -Wall -Wextra -Werror $(OBJ) -o $(NAME)

$(OBJ): $(SRC)
	gcc -Wall -Wextra -Werror -c $(SRC)

re: fclean all

all: $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

x: $(NAME) clean
	@./$(NAME)

push: fclean
	git add $(SRC) Makefile
	git commit -m "d-r-e"
	git push

diff: $(NAME)
	./$(NAME) > out; diff out Colleen.c
	@rm -f out
	@rm -f $(OBJ)