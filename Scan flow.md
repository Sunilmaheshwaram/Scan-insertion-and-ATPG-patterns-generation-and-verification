// Flow for Full Scan Insertion
Step-1: Read synthesised gate-level netlist and standard cell libraries.
Step-2: Set-up circuit and tool information.
Step-3: Specify Scan/test configurations.
Step-4: Check DRC, after DRC pass go for scan/test insertion.
Step-5: Analyze the scan chains.
Step-6: Insert the test logic, in this the scan chains will be stitched.
Step-7: Write out ATPG dofile, scan inserted netlist. 

// For for EDT Insertion
Step-1: Read the scan inserted netlist and standard cell libraries, ram sequential libraries(if any memories exists in the desgin).
Step-2: Set the current design and source the dofile and setup the scan circuit.
Step-3: Specify the parameters for EDT logic.
Step-4: Currently defined names and inversion status of EDT channel and control pins.
Step-5: Check DRC(Design Rule Check), rectify the violations if caused, if not enter into the analysis phase.
Step-6: Display configurations of the EDT logic
Step-7: Write out EDT files.
Step-8: Exit
