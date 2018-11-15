






















create_generated_clock -name clkdiv1 -source [get_pins design_1_i/block_test_0/inst/BUFGCE_1_mhz/I0] -edges {1 2 17} [get_pins design_1_i/block_test_0/inst/BUFGCE_1_mhz/O]
create_generated_clock -name clkdiv2 -source [get_pins design_1_i/block_test_0/inst/BUFGCE_2_mhz/I0] -edges {7 8 15} [get_pins design_1_i/block_test_0/inst/BUFGCE_2_mhz/O]

