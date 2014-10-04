Stata package capass
====================

Capass is a simple wrapper for [Stata](http://www.stata.com/)'s built-in [assert](http://www.stata.com/help.cgi?assert) command that allows to throw error messages if the assertion evaluates to false. This is especially useful if the assertion is hidden in quietly executed parts of the code or in preserved mode.


## Installation

You can install the latest version of capass via Stata:

	. net from https://mloeffler.github.io/stata/
	. net install capass

Done.


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

Copyright (C) 2014, [Max Löffler](http://www.zew.de/en/staff/mlo)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

