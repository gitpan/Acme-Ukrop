# $Id: 02-basic.t,v 1.1 2008/04/10 13:07:17 dk Exp $
use strict;
use Acme::Ukrop;
use Test::More tests => 2;

�i����� OCb_TAKE($)
��
	���� ($_[0]) ��
		���� 0;
	���� ��� ��
		���� 1;
	����
��� ����

ok(1 == OCb_TAKE 0);
ok(0 == OCb_TAKE 1);
