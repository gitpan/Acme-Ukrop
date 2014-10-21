#  Content-Encoding: koi8-u
#  
#  $Id: Ukrop.pm,v 1.1 2008/04/10 13:07:17 dk Exp $

use strict;

package Acme::Ukrop;

use vars qw($VERSION);

$VERSION = '0.01';

my %n = (
	'����'     => 'return',
	'���'      => 'else',
	'��'       => '{',
	'����'     => '}',
	'���'      => '',
	'�����'    => 'my',
	'����'     => 'print',
	'�i�����'  => 'sub',
	'����'     => 'while',
	'����'     => 'if',
	'�������'  => 'length',
	'����'     => 'break',
	'�i��i�����ɛ��'=> 'chomp',
);

my $k  = join('|', sort keys %n);
my $nc = qr/[^a-zA-Z\x80-\xff]/;
$k = qr/(^|$nc)($k)(?=$|$nc)/;
use Filter::Simple sub { s/$k/$1$n{$2}/gs } ;

1;

=pod

=head1 NAME

Acme::Ukrop - ukrop parser

=head1 DISCAIMER

This is a preliminary implementation of parser of language Ukrop, based on
ukrainian language. Internally, the language is the same perl but with
ukrainian keywords instead. If you don't know ukrainian, don't bother.

=head1 DESCRIPTION

������ ��������� ������������ ��������� ������� ���������� ���������� �� ������
��� ����������� �����.

=head1 SYNOPSIS

	use Acme::Ukrop;
	���� (<>) ��
		�i��i�����ɛ��;
		���� "�� �����: $_\n";
	��� ����

=head1 SEE ALSO

http://community.livejournal.com/ru_ukrop/

=head1 THANKS

Kiev.pm for help with inseminating the Ukrop.

=head1 AUTHOR

Dmitry Karasik, E<lt>dmitry@karasik.eu.orgE<gt>.

=cut
