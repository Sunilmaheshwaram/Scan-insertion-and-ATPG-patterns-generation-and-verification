//Script for Stuck_at faults
set_context patterns -scan
read_verilog /--netlist path--
read_cel1_library /--library path--
set_current_design --name of the top module--
// use file created by Testkompress during RIL generation 
dofile /--dofile path--
// Enter ANALYSIS mode
check_design_rules
// Reports
report_scan_volume > results/scan_volume.txt
report_scan_cells > results/scan_cells.txt
report_scan_chains > results/scan_chains.txt
report_clock_domains
// Display configuration
report_scan_chains >reports/scan_chains.txt 
report_scan_cells  >reports/scan_cells.txt 
report_scan_volume >reports/scan_volume. txt
// ATPG Setup
set_fault_type -stuck 
add_faults -all
// Target abort faults
set_ abort_limit 100
report_statistics
// Generate patterns
create patterns -coverage effort high
report_scan_volume > reports/scan_volumepost.txt
// Command to write out fault list
write_faults reports/fault_list.txt - replace
//Verilog pattern
// Chain patterns
write_patterns patterns/--name of the file-- -verilog -parallel pattern_sets chain -replace 
write_ patterns patterns/--name of the file-- -verilog -serial -pattern_sets chain -replace
// Scan or logic patterns
write_patterns patterns/--name of the file-- -verilog -parallel -pattern_sets scan -replace 
write_patterns patterns/--name of the file-- -verilog -serial -pattern_sets scan -replace
// stil patterns generation
write_patterns patterns/--name of the file-- stil - stil -serial -pattern sets scan -replace
// Save out pattern
write_patterns pattern/--name of the file-- -ascii -replace
// To debug binary mismatches
write_patterns pattern/--name of the file-- -binary -replace


//Script for TRansition faults
set_context patterns -scan
read_verilog /--netlist path--
read_cel1_library /--library path--
set_current_design --name of the top module--
// use file created by Testkompress during RIL generation 
dofile /--dofile path--
// Enter ANALYSIS mode
check_design_rules
// Reports
report_scan_volume > results/scan_volume.txt
report_scan_cells > results/scan_cells.txt
report_scan_chains > results/scan_chains.txt
report_clock_domains
// Display configuration
report_scan_chains >reports/scan_chains.txt 
report_scan_cells  >reports/scan_cells.txt 
report_scan_volume >reports/ scan_volume. txt
// ATPG Setup
set_fault_type -TRansition -no_shift_launch //for LOC
set_fault_type -TRansition -allow_launch //for LOS
add_faults -all
// Target abort faults
set_ abort_limit 100
report_statistics
// Generate patterns
create patterns -coverage effort high
report_scan_volume > reports/scan_volumepost.txt
// Command to write out fault list
write_faults reports/fault_list.txt - replace
//Verilog pattern
// Chain patterns
write_patterns patterns/--name of the file-- -verilog -parallel pattern_sets chain -replace 
write_ patterns patterns/--name of the file-- -verilog -serial -pattern_sets chain -replace
// Scan or logic patterns
write_patterns patterns/--name of the file-- -verilog -parallel -pattern_sets scan -replace 
write_patterns patterns/--name of the file-- -verilog -serial -pattern_sets scan -replace
// stil patterns generation
write_patterns patterns/--name of the file-- stil - stil -serial -pattern sets scan -replace
// Save out pattern
write_patterns pattern/--name of the file-- -ascii -replace
// To debug binary mismatches
write_patterns pattern/--name of the file-- -binary -replace




