
Directories: teraSort

For the makefile to work:
The makefile can work in any directory but the following must be true:
1. The Makefile must be located in the directory (teraSort)
2. The (.cpp) files must be inside the directory (teraSort)
3. The header files (.h) must be inside the directory (teraSort)

To compile using makefile:
1. On the command line, go to the directory where the makefile is located using the command ‘cd’
2. Type on the command line ‘make’
3. The program will compile

To clean object files using makefile:
1. On the command line, go to the directory where the makefile is located using the command ‘cd’
2. Type on the command line 'make clean'
3. The object files (.o) will be deleted from the objects directory

The Outputs:
- The object files (.o) will be located in the directory "objects"
- The executable file will be located in the directory "bin"

To run the executable:
1. On the command line, go to the directory where the executable file is located using the command ‘cd’
2. Type on the command line ‘./FILE_NAME’
3. Must add the following command line arguments in any order:
        ->   '--input-file <INPUT_FILE_NAME>'
        ->   '--output-file <OUTPUT_FILE_NAME>'
        ->   '--mappers <#_of_mapper_threads>'
        ->   '--reducers <#_of_reducer_threads>'
        ->   '--sample-size <size_of_sample>'
