# makefile to run individual cpp files
# Created: 2018-10-10

# define the C++ compiler to use
CC = g++

# define any compile-time flags
CFLAGS = -Wall -g

# define any directories containing header files other than /usr/include
#
INCLUDES = -I.

# define library paths in addition to /usr/lib
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their path using -Lpath, something like:
#
LFLAGS = -L.

# define any libraries to link into executable:
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their name using -lname, something like:

LIBS = -lm

# define the C++ source files
SRCS = file.cpp

# define the C++ object files
#
# This uses Suffix Replacement within a macro:
#   $(name:string1=string2)
# The macro `name' is expanded and the resulting string
# have all occurrences of `string1' replaced by `string2'.
#
OBJS = $(SRCS:.cpp=.o)

# define the executable file
MAIN = main

.PHONY: depend clean

all: $(MAIN)
	@echo  Binary file  named $(MAIN) has been compiled

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

clean:
	$(RM) *.o *~ $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it


# how to provide file name as argument to makefile
# https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line
# https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line/6273809#6273809

# how to use makefile to compile cpp files
# https://stackoverflow.com/questions/2481269/how-to-use-makefile-to-compile-c-c-source-files

