#!/usr/bin/env perl
#
# Copyright 2019, Centre for Genomic Regulation (CRG)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

use strict; use warnings;

my $file = $ARGV[0];
my $max = $ARGV[1];
my $count = 0;

open(my $fh, '>', $file);
while ($count < $max) {
    printf $fh "%8X", rand(0xffffffff);
    $count+=+8;
}

close $fh;
