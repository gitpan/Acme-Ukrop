# $Id: Makefile.PL,v 1.1 2008/04/10 13:07:17 dk Exp $
use ExtUtils::MakeMaker;
WriteMakefile(
	NAME          => 'Acme::Ukrop',
	AUTHOR        => 'Dmitry Karasik <dmitry@karasik.eu.org>',
	ABSTRACT_FROM => 'Ukrop.pm',
	VERSION_FROM  => 'Ukrop.pm',
);
