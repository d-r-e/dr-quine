NAME = Colleen
NASM	:= nasm
FLAGS	:= -f macho64
LD		:= ld
LDFLAGS	:= -macosx_version_min 10.8 -lSystem
SRC := Colleen.s
OBJ := Colleen.o
all: $(NAME)

$(NAME): $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $@

%.o: %.s
	$(NASM) $(FLAGS) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: clean all

x: re
	cat Colleen.s
	./Colleen

diff: $(NAME)

all: $(NAME)