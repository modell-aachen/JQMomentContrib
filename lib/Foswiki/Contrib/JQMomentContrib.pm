# Plugin for Foswiki - The Free and Open Source Wiki, http://foswiki.org/
#
# JQMomentContrib is Copyright (C) 2012-2013 Michael Daum http://michaeldaumconsulting.com
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details, published at
# http://www.gnu.org/copyleft/gpl.html

package Foswiki::Contrib::JQMomentContrib;

use strict;
use warnings;

=begin TML

---+ package JQMomentContrib

=cut

our $VERSION = '2.00';
our $RELEASE = '2.00';
our $SHORTDESCRIPTION = 'A lightweight javascript date library for parsing, manipulating, and formatting dates';
our $NO_PREFS_IN_TOPIC = 1;

=begin TML

---++ init() -> $boolean

call this to init the plugin from perl

=cut

sub init {
  require Foswiki::Plugins::JQueryPlugin;
  Foswiki::Plugins::JQueryPlugin::registerPlugin("Moment", "Foswiki::Contrib::JQMomentContrib::Core");
}

1;
