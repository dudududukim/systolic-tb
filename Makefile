VERILOG_SRC = src/rtl/SInt_ReuseC_SystolicArray_16x16.v src/tb/tb_systolic.v

TARGET = results/sim.out

VCD = results/dump.vcd
FST = results/dump.fst

all: clean gen_vec compile run gen_fst wave

gen_vec: clean
	uv run python3 src/scripts/gen_vectors.py

results: clean
	mkdir -p results

compile: results
	iverilog -o $(TARGET) $(VERILOG_SRC)

run: compile
	./$(TARGET)

gen_fst: run
	vcd2fst $(VCD) $(FST)

wave:
	gtkwave $(VCD)

wave_fst:
	gtkwave $(FST)

clean:
	rm -f $(TARGET) *.vcd *.fst *.hex
