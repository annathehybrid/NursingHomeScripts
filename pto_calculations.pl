#!/usr/bin/env perl
use strict;
use warnings;

# this script will calculate the personal time off that each employee has earned
# the inputs are a csv file with:
# 	employee first name
#	employee last name 
# 	job position (this determines whether they are group 1, 2, or 3, partially affects PTO rate)
#	hire date (this determines length of employement, partially affects PTO rate)
# 	date they worked
# 	number of hours they worked on that particular day
# 	personal time off taken
# the outputs are a csv file with:
# 	employee first name
#	employee last name
#	total accrued PTO
 
# First, we should input the raw csv file from ADP
# I don't think that we can guarentee that the csv file will always be the same
# or that the headers will always be the same and in the same order
# so we should check that the headers are correct, pick them out
# and create a separate csv file for our calculations
# and leave the raw file alone

# open the raw csv file from ADP
my $filename_raw_from_adp = 'input_adp_raw.csv';
open (my $csv, '<', $filename_raw_from_adp) || die "cant open the raw file from ADP";

# read the entire csv file into an array
my @data;

foreach (<$csv>) {
  push @data, split(/\,/);
}

close ($filename_raw_from_adp);


# we should check where in the array our relevant data elements are
my $number_employee_name = 0;
my $number_job_position = 0;
my $number_hire_date = 0;
my $number_date_worked = 0;
my $number_hours_worked = 0;
my $number_pto_already_taken = 0;

foreach my $item(@data) {
    print "$item\n";
}

# for loop execution
for( $a = 1; $a < 3; $a = $a + 1 ) {
   print "value of a: $a\n";
}



