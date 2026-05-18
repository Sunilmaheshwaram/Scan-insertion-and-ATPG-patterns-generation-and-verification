Step-1: Set the context and load the design and library files.
Step-2: Set the current design to the top-level like you did previously when you inserted scan into the design.
Step-3: Load the dofile pipe_scan.dofile that was created in the previously and setup scan circuit.
Step-4: Run DRCs. If there are no DRC errors, the system mode and prompt will be ANALYSIS.
Step-5: Create a scan cell report, and direct the output to a file.
Step-6: Next, add stuck-at faults/TRansition faults and create test patterns. ATPG Expert (create_patterns) adds stuck-at faults automatically.
Step-7: Save the flat model.
Step-8: Write out the verilog patterns(chain & scan), ASCII, binary, STIL.
Step-9: Exit
