S = ./sources
O = ./objects
H = ./headers
B = ./bin
INC = -I $(H)
INC += -I $(S)
OBJ_F = -c
STD = -std=c++11
TH = $(STD) -pthread
DB = -g
GCC = /usr/bin/g++

$(B)/teraSort: $(O)/CommandLineArguments.o $(O)/Mapper.o $(O)/parallel_terasort.o $(O)/Partition.o $(O)/Partitioner.o $(O)/QuickSort.o $(O)/Reducer.o $(O)/TeraSort.o $(O)/TeraSortItem.o $(O)/addons.o 
	$(GCC) $(DB) $(O)/CommandLineArguments.o $(O)/Mapper.o $(O)/parallel_terasort.o $(O)/Partition.o $(O)/Partitioner.o $(O)/QuickSort.o $(O)/Reducer.o $(O)/TeraSort.o $(O)/TeraSortItem.o $(O)/addons.o -o $(B)/teraSort $(TH)

$(O)/CommandLineArguments.o: $(S)/CommandLineArguments.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/CommandLineArguments.cpp -o $(O)/CommandLineArguments.o $(TH)

$(O)/Mapper.o: $(S)/Mapper.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/Mapper.cpp -o $(O)/Mapper.o $(TH)

$(O)/parallel_terasort.o: $(S)/parallel_terasort.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/parallel_terasort.cpp -o $(O)/parallel_terasort.o $(TH)

$(O)/Partition.o: $(S)/Partition.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/Partition.cpp -o $(O)/Partition.o $(TH)

$(O)/Partitioner.o: $(S)/Partitioner.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/Partitioner.cpp -o $(O)/Partitioner.o $(TH)

$(O)/QuickSort.o: $(S)/QuickSort.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/QuickSort.cpp -o $(O)/QuickSort.o $(TH)

$(O)/Reducer.o: $(S)/Reducer.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/Reducer.cpp -o $(O)/Reducer.o $(TH)

$(O)/TeraSort.o: $(S)/TeraSort.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/TeraSort.cpp -o $(O)/TeraSort.o $(TH)

$(O)/TeraSortItem.o: $(S)/TeraSortItem.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/TeraSortItem.cpp -o $(O)/TeraSortItem.o $(TH)

$(O)/addons.o: $(S)/addons.cpp
	$(GCC) $(DB) $(OBJ_F) $(INC) $(S)/addons.cpp -o $(O)/addons.o $(TH)

clean:
	rm -rf $(O)/*.o
