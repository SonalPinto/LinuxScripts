#!/usr/bin/perl 

use strict;
use warnings;

# parse mixing brightness or default it to 256
# 256 - nice pastel colors
# 128 = dark pastel
my $mix = shift || 256;

# generate random BG
my $r = int(rand(256));
my $g = int(rand(256));
my $b = int(rand(256));

# mix in the offset
$r = ($r+$mix) / 2;
$g = ($g+$mix) / 2;
$b = ($b+$mix) / 2;

# format the bg color string
my $bg = sprintf("#%x%x%x", $r, $g, $b);

# generate FG color based on luminosity of the BG
# Y = 0.2126 R + 0.7152 G + 0.0722 B
my $lumin = (0.2126*$r + 0.7152*$g + 0.0722*$b)/256;
my $fg = ($lumin<0.5) ? '#f2f3f4' : '#131516';


# print "\n|$bg|$fg|\n";
#generate text string for xterm commands
print "-fg $fg -bg $bg";
