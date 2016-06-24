# Class: dc_depman
#
# This module manages dc_depman
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class dc_depman (String $depManName){ 
    include dc_depman::dependencies
    include dc_depman::install
}
