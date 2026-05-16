set_context dft -edt
read_verilog /--path--
read_cell_library /--path--
// Define scan chains and control signals
dofile /--path--
tessent_scan_setup
// Specify parameters for EDT logic
set_edt_options -channels 1
// Currently-defined names and inversion status of EDT channel and control pins
report_edt_pins
// Enter ANALYSIS mode
check_design_rules
// Display configuration of the EDT logic 
report_edt_configurations
// Report required lockup cells 
report_edt_lockup_cells
// Write out EDT RTL
vrite_edt_files /--path-- 
// Generate patterns to obtain coverage estimate 
create_patterns 
report_scan_volume
exit 
