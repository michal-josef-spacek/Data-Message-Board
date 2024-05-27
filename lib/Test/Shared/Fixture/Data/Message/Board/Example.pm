package Test::Shared::Fixture::Data::Message::Board::Example;

use base qw(Data::Message::Board);
use strict;
use warnings;

use Data::Message::Board::Comment;
use Data::Person;
use DateTime;

our $VERSION = 0.01;

sub new {
	my $class = shift;

	my @params = (
		'author' => Data::Person->new(
			'name' => 'John Wick',
		),
		'comments' => [
			Data::Message::Board::Comment->new(
				'author' => Data::Person->new(
					'name' => 'Gregor Herrmann',
				),
				'date' => DateTime->new(
					'day' => 25,
					'month' => 5,
					'year' => 2024,
					'hour' => 17,
					'minute' => 53,
					'second' => 27,
				),
				'id' => 1,
				'message' => 'apt-get update; apt-get install perl;',
			),
			Data::Message::Board::Comment->new(
				'author' => Data::Person->new(
					'name' => 'Emmanuel Seyman',
				),
				'date' => DateTime->new(
					'day' => 25,
					'month' => 5,
					'year' => 2024,
					'hour' => 17,
					'minute' => 53,
					'second' => 37,
				),
				'id' => 2,
				'message' => 'dnf update; dnf install perl-intepreter;',
			),
		],
		'date' => DateTime->new(
			'day' => 25,
			'month' => 5,
			'year' => 2024,
			'hour' => 17,
			'minute' => 53,
			'second' => 20,
		),
		'id' => 7,
		'message' => 'How to install Perl?',
	);

	my $self = $class->SUPER::new(@params);

	return $self;
}

1;

__END__
