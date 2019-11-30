use strict;
use warnings;

use Data::Dumper;
use LWP::Simple;

$| = 1;

sub main {
	
	# Download a webpage to scrape it.
	my $url = 'https://www.hager.de/schalterprogramme/berker-s.1-rahmen/berker-s.1-rahmen/963.htm';
	print "Downloading webpage!\n";
	my $webpage = get $url;
	
	# Get all the product urls.
	my @products = ();
	while ($webpage =~ m~(/schalterprogramme/berker-s.1-rahmen/.+\d{5,}.+html?)~ig) {
		#print "www.hager.de", $1, "\n";
		push @products, 'https://www.hager.de' . $1;
		
	}
	
	print "Found product links. Start iterating through it.\n";
	
	# Download the images of each product.
	foreach my $product (@products) {
		print "Download product page: $product\n";
		my $website = get $product;
		#print "Product Page URL: $website\n";
		if ($website =~ m~(ecatimages/detail/(\d+.jpg))~ig) {
			my $img_url = 'https://www.hager.de/'. $1;
			print "Downloading image: $img_url\n";
			my $img_sto_path = "C:\\Users\\mmigs\\Downloads\\$2";
			getstore $img_url, $img_sto_path;
			print "Images SAVED!\n";
		}
		else {
			print "No images found!\n";
		}
	}
	
	# Show what's in @products.
	print Dumper(@products);
}

main();
