Stata package capass
====================

Capass is a simple wrapper for Stata's assert command that allows to throw error messages if the assertion evaluates to false. This is especially useful if the assertion is hidden in quietly executed parts of the code or in preserved mode.


## Use

Instead of typing

	. assert 1 + 1 == 3
	assertion is false
	r(9);

and wondering what the assertion was actually about, just type

	. capass 1 + 1 == 3, throw("1 + 1 = 2. You should know this from elementary school...")
	1 + 1 = 2. You should know this from elementary school...
	assertion is false
	r(9);

All options of Stata's assert are available to capass as well.


## Info

2014, [Max Löffler](http://www.zew.de/en/staff/mlo)
