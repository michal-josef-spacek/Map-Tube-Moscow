#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Map::Tube::GraphViz;
use Map::Tube::GraphViz::Utils qw(node_color_without_label);
use Map::Tube::Moscow;

# Object.
my $obj = Map::Tube::Moscow->new;

# GraphViz object.
my $g = Map::Tube::GraphViz->new(
        'callback_node' => \&node_color_without_label,
        'tube' => $obj,
);

# Get graph to file.
$g->graph('Moscow.png');

# Print file.
system "ls -l Moscow.png";

# Output like:
# -rw-r--r-- 1 skim skim 527784 Feb 19 08:09 Moscow.png