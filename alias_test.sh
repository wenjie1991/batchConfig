#!/bin/bash -
#===============================================================================
#
#          FILE: alias_test.sh
#
#         USAGE: ./alias_test.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/20/2018 10:31:53 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

lla=ls -l -a -h
$lla
