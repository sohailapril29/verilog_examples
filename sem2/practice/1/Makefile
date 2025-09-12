TOP = tb
SRC = packet.sv

all: compile elaborate simulate

compile:
	xvlog -sv $(SRC)

elaborate:
	xelab $(TOP)

simulate:
	xsim work.$(TOP) -runall
