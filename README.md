# Scan-insertion-and-ATPG-patterns-generation-and-verification
One of the main DFT projects performed and mentioned in my CV/Resume. # 2

# Project Overview
Scan insertion, ATPG, Simulation & Verification is performed on a sequential design during VLSI DFT training.

# Specifications
Number of flipflops : ~25K flipflops
Shift frequency : 25MHZ
Tools used : Tessent- TestKompress & ModelSim
No.of Clocks : Single Clock
Flipflops type : Positive edge triggered
Time period : 40ns
MCL(Max Chain Length): 500
No.of Scan chains(Internal Scan Chains): 50
Compression Ratio(CR): 5X
External Channels: 10
Location : Semicon Technolabs

# Role and Responsibilites
1. Performed Scan insertion & chain stitching
2. Checked and fixed Scan DRC violations
3. Added Compression(EDT) logic
4. Generated Stuck-at & At-Speed patterns
5. Performed Fault coverage analysis & improvement
6. Simulated and debugged patterns on ModelSim

# DFT Flow
1. Read the synthesized gate-level netlist and standard cell library files.
2. Define DFT constraints and test control signals such as Scan Enable, Test Clock, Test Mode, and Reset signals.
3. Configure the design hierarchy and set the design level as block-level, core-level, or chip-level.
4. Perform DFT DRC (Design Rule Check) and analyze/fix reported violations.
5. Configure scan architecture and define scan-related test logic.
6. Analyze and balance scan chains based on scan constraints and MCL requirements.
7. Insert scan logic and connect scan chains.
8. Generate scan-inserted netlist, ATPG setup files, and LEC verification files.
9. Integrate EDT (Embedded Deterministic Test) / scan compression logic and generate EDT reports.
10. Generate ATPG patterns for Stuck-at and At-Speed (Transition) faults.
11. Verify ATPG patterns, perform fault simulation, and analyze fault coverage reports.
12. Perform post-ATPG simulation and verification using ModelSim.

# Result
Successfully implemented complete DFT flow including Scan Insertion, EDT/scan compression integration, ATPG pattern generation, and post-DFT verification using industry-standard DFT methodologies. Achieved successful scan-chain connectivity, DFT DRC closure, and validated design functionality through LEC and simulation. Generated and verified Stuck-at and At-Speed ATPG patterns with satisfactory fault coverage and validated the design using ModelSim simulation environment.

# Note
The data, flow, and implementation details presented in this repository are based on the projects and practical work performed during my DFT training at Semicon Technolabs. This GitHub repository has been created solely for professional and educational portfolio purposes to showcase my understanding, hands-on experience, and project work in the DFT domain. Any content shared here is intended only for learning, demonstration, and representation of my technical skills and should not be considered as proprietary or commercial material.

# Author
Sunil Maheshwaram

VLSI | DFT | ECE
