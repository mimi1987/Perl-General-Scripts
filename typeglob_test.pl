package Test;

use v5.030;

sub new {
  my $class = shift;
  my %args = @_;

  bless \%args, $class;
}

for my $name (qw[video_id video_url title user fmt]) {
  no strict 'refs';
  *{"get_$name"} = sub {
    use strict 'refs';
    my $self = shift;
    print "$self->{$name}\n";
  };
}

1;

my $test1 = Test->new(
  video_id => 1234,
  video_url => "www.yt.com/?v=fldfasl",
  title => "Best video ever!",
  user => "Michael",
  fmt => "allowed"
);

$test1->get_video_id();
$test1->get_video_url();
$test1->get_title();
$test1->get_user();
$test1->get_fmt();
