set_context dft - scan
read_verilog /--netlist path--
read_cell_library /--library path--
set_current_design
analyze_control_signals - auto_fix      // Identify and define control signals
check_design_rules // Enter scan insertion system mode
// Insert scan and ensure dedicated scan output pins
set_scan_insertion_options -port_index_start_value 1 -si_port_format edt _sisd - so_port_format edt_so%d  // Insert scan and ensure dedicated scan output pins 
add_scan_mode unwrapped -chain_count 500
analyze_scan_chains 
insert_test_logic
report_scan_chains 
report_test_logic  // Report scan chains and new test logic
write_design -output_file /--path-- -replace     // Write out netlist
write_atpg_setup /--path-- - replace  // Write out atpg dofile and testproc file
exit
