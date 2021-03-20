SRCS = $(wildcard libfiles/*.s)
OBJS = $(SRCS:.s=.o)
NAME = libasm.a
FLAGS = -f macho64

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

%.o: %.s
	nasm $(FLAGS) $^
clean:
	rm -f $(OBJS) a.out
	rm -rf a.out*
fclean: clean
	rm -f $(NAME)
re: fclean all
test:
	gcc -g main.c $(NAME)
	./a.out
