package Data::Message::Board::Comment;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.28 qw(check_isa check_length check_number_id check_required);

our $VERSION = 0.05;

has author => (
	is => 'ro',
);

has date => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has message => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check author.
	check_required($self, 'author');
	check_isa($self, 'author', 'Data::Person');

	# Check date.
	check_required($self, 'date');
	check_isa($self, 'date', 'DateTime');

	# Check id.
	check_number_id($self, 'id');

	# Check message.
	check_required($self, 'message');
	check_length($self, 'message', 4096);

	return;
}

1;
