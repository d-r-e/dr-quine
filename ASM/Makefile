COLLEEN	:= Colleen
GRACE	:= Grace
SULLY	:= Sully
NASM	:= nasm
FLAGS	:= -f macho64
LD		:= ld
LDFLAGS	:= -macosx_version_min 10.8 -lSystem
SRCC := Colleen.s
OBJC := Colleen.o
SRCG := Grace.s
OBJG := Grace.o
SRCS := Sully.s
OBJS := Sully.o

OBJ = $(OBJC) $(OBJS) $(OBJG)
NAME = $(COLLEEN) $(GRACE) $(SULLY)


all: $(COLLEEN) $(GRACE)

$(COLLEEN): $(OBJC)
	$(LD) $(LDFLAGS) $(OBJC) -o $@

$(GRACE): $(OBJG)
	$(LD) $(LDFLAGS) $(OBJG) -o $@

$(SULLY): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $@

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