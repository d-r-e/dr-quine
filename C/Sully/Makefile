NAME = Sully

SRC = Sully.c

OBJ = Sully.o

COPIES = Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0 Sully_5.c Sully_4.c Sully_3.c Sully_2.c Sully_1.c Sully_0.c

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
	rm -f $(COPIES)

x: $(NAME) clean
	@./$(NAME)

push: fclean
	git add $(SRC) Makefile
	git commit -m "d-r-e"
	git push