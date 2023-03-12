# This is a Makefile

#####################################################################

# make all

all: run


# only make visual ( make .elf file to the .vcd file )

run:
	python main.py


clean:
	rm -rf simulation ./myTests/__pycache__ ./simulator/__pycache__