package Tony;

use strict;
use warnings;
use Selenium::Firefox;
use Selenium::Remote::Driver;
use Selenium::Remote::WDKeys;

# Constructor
sub new {
  my $class = shift;
  my %args = @_;
  bless \%args, $class;
}

# Getter Methods
for my $name (qw[geckodriver_path email_address password]) {
  no strict 'refs';
  *{"get_$name"} = sub {
    use strict 'refs';
    my $self = shift;
    print $self->{$name}, "\n";
  };
}

# Create Driver For Firefox Webbrowser
sub create_driver {
  my $self = shift;
  my $driver = Selenium::Firefox->new(binary => $self->{geckodriver_path});
}

sub fill_out_form {
  my ($self, $driver) = @_;

  # Pass the email address to the login form.
  $driver->get('https://meine.tonies.de/login');
  my $elem_email = $driver->find_element_by_id('input-id-email');
  $elem_email->send_keys($self->{email_address});

  # Pass the password to the login form.
  my $elem_pass = $driver->find_element_by_id('input-id-password');
  $elem_pass->send_keys($self->{password});
  sleep 1;
  $driver->send_keys_to_active_element(KEYS->{'enter'});
  sleep 30;
  $driver->quit();
}

# Upload Song

1;
