use utf8;
use warnings;
use strict;

# Enables Unicode autput STDOUT;
binmode(STDOUT, ":utf8");

package Product;

use strict;
use warnings;

sub new {
  my ($class, $args) = @_;
  my $self = bless {
    serial => $args->{serial},
    name => $args->{name},
    price => $args->{price},
    discount => $args->{discount},
  }, $class;
}

sub serial {
  my ($self, $serial) = @_;
  if (@_ == 2) {
    $self->{serial} = $serial;
  }
  return $self->{serial};
}

sub discount {
  my ($self, $discount) = @_;
  if (@_ == 2) {
    $self->{discount} = $discount;
    }
  unless (defined $discount or defined $self->{discount}) {
    print "Please set a discount!";
    }
  else {
    return $self->{discount};
  }
}

sub name {
  my ($self, $name) = @_;
  if (@_ == 2) {
    $self->{name} = $name;
  }
  return $self->{name};
}

1;

package Person;

use strict;
use warnings;

sub new {
  my ($class, $args) = @_;
  my $self = bless {
    name => $args->{name},
    age => $args->{age},
    sex => $args->{sex},
  }, $class;
}

sub name {
  my ($self, $name) = @_;
  if (@_ == 2) {
    $self->{name} = $name;
  }
  return $self->{name};
}

1;

package Template;

use strict;
use warnings;
use utf8;

sub new {
  my ($class, $args) = @_;
  my $self = bless {
    Teilnehmer => $args->{Teilnehmer},
    Satellitenposition => $args->{Satellitenposition},
    "Sat-Antenne" => $args->{"Sat-Antenne"},
    LNB => $args->{LNB},
    Multischalter => $args->{Multischalter},
    Receiver => $args->{Receiver},
    "Installations-Zubehör" => $args->{"Installations-Zubehör"},
    Besonderheiten => $args->{Besonderheiten},
  }, $class;
}

sub print_template {
  my $self = shift;
  while (my ($k, $v) = each %$self) {
    print "$k: $v\n";
  }
}

1;

use Data::Dumper;

my $iphone = Product->new({
  serial => 12345,
  name => "iPhone 10",
  price => 1150.90,
});

my $michael = Person->new({
  name => "Michael",
  age => 32,
  sex => "male",
});

print $iphone->serial;
print "\n";
print $iphone->discount;
print "\n";
print Dumper($iphone->{discount});
$iphone->{discount} = 10.00;
print "\n";
print Dumper($iphone->{discount});
print "\n";
print $iphone->discount;
print "\n";
print $michael->name;
print "\n";

sub array {
  return @_;
}

my @array = array("Michael", "Markus", "Thomas");

print "@array\n";

my $schwaiger = Template->new({
  Teilnehmer => 1,
  Satellitenposition => 1,
  "Sat-Antenne" => "1x 35cm",
  LNB => "1x Single",
  Multischalter => "nein",
  Receiver => "1x DVB-S2",
  "Installations-Zubehör" => "1x Koaxialkabel, HDMI-Kabel",
  Besonderheiten => "Campinganlage, Fernbedienung, Koffer",
});

#print Dumper($schwaiger);
print "\n";
$schwaiger->print_template;
