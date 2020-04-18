package Tony;

use strict;
use warnings;
use Selenium::Firefox;
use Selenium::Remote::Driver;
use Selenium::Remote::WDKeys;

sub new {
  my $class = shift;
  my %args = @_;

  bless \%args, $class;
}


my $gecko_driver_path = 'C:\geckodriver-v0.26.0-win64\geckodriver.exe';
my $driver = Selenium::Firefox->new(binary => $gecko_driver_path);
# $driver->debug_on;

# Pass the email address to the login form.
$driver->get('https://meine.tonies.de/login');
my $elem_email = $driver->find_element_by_id('input-id-email');
$elem_email->send_keys('fill_in_email');

# Pass the password to the login form.
my $elem_pass = $driver->find_element_by_id('input-id-password');
$elem_pass->send_keys('fill_in_password');
sleep 1;
$driver->send_keys_to_active_element(KEYS->{'enter'});



# Upload a song.
my $tonies = $driver->find_element_by_partial_link_text('/tonies');
$driver->send_keys_to_active_element(KEYS->{'enter'}) if $tonies != 0
or die "Cant't open tonies!";


sleep 5;
$driver->quit();

1;
