# See bottom of file for license and copyright information

package Foswiki::Contrib::JQMomentContrib::Core;
use strict;
use warnings;

use Foswiki::Plugins::JQueryPlugin::Plugin ();
our @ISA = qw( Foswiki::Plugins::JQueryPlugin::Plugin );

=begin TML

---+ package Foswiki::Contrib::JQMomentContrib::Core

This is the perl stub for the moment.js library.

=cut

=begin TML

---++ ClassMethod new( $class, $session, ... )

Constructor

=cut

sub new {
  my $class = shift;
  my $session = shift || $Foswiki::Plugins::SESSION;

  my $this = bless(
    $class->SUPER::new(
      $session,
      name => 'Moment',
      version => '1.6.3',
      author => 'Tim Wood',
      homepage => 'http://momentjs.com/',
      javascript => ['moment.js'],
      puburl => '%PUBURLPATH%/%SYSTEMWEB%/JQMomentContrib',
    ),
    $class
  );

  return $this;
}

=begin TML

---++ ClassMethod init( $this )

add language files 

=cut

sub init {
    my $this = shift;

    return unless $this->SUPER::init();

    # open matching localization file if it exists
    my $session = $Foswiki::Plugins::SESSION;
    my $langTag = $session->i18n->language();

    return if $langTag eq 'en'; # default

    my $langPath =
        $Foswiki::cfg{SystemWebName}
      . '/JQMomentContrib/lang/'
      . $langTag . '.js';

    #print STDERR "langTag=$langTag\n";
    my $langFile = $Foswiki::cfg{PubDir} . '/' . $langPath;
    if ( -f $langFile ) {
        Foswiki::Func::addToZone(
            'script', "MOMENT::LANG",
            <<"HERE", 'MOMENT' );
<script type='text/javascript' src='$Foswiki::cfg{PubUrlPath}/$langPath'></script>
HERE
    } else {
      #print STDERR "no translations for '$langTag'\n";
    }
}

1;

__END__
Foswiki - The Free and Open Source Wiki, http://foswiki.org/

Copyright (C) 2012 Michael Daum http://michaeldaumconsulting.com

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version. For
more details read LICENSE in the root of this distribution.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

As per the GPL, removal of this notice is prohibited.

