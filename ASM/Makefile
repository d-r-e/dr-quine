COLLEEN	:= Colleen
GRACE	:= Grace
SULLY	:= Sully
NASM	:= nasm
FLAGS	:= -f macho64
LDFLAGS	:= -macosx_version_min 10.8 -lSystem -no_pie
SRCC := Colleen.s
OBJC := Colleen.o
SRCG := Grace.s
OBJG := Grace.o
SRCS := Sully.s
OBJS := Sully.o

NAME = $(COLLEEN) $(GRACE) $(SULLY)

OBJ = $(OBJC) $(OBJS) $(OBJG)

all: $(COLLEEN) $(GRACE)

$(COLLEEN): $(OBJC)
	ld $(LDFLAGS) $(OBJC) -o $@
$(GRACE): $(OBJG)
	ld $(LDFLAGS) $(OBJG) -o $@
$(SULLY): $(OBJS)
	ld $(LDFLAGS) $(OBJS) -o $@

%.o: %.s
	$(NASM) $(FLAGS) $< -o $@

clean:
	rm -f $(OBJ)
	rm -f Grace_kid.s
	rm -f Sully_*

fclean: clean
	rm -f $(NAME)

re: clean all

x: re
	cat Colleen.s
	./Colleen

diff: $(NAME)

all: $(NAME)