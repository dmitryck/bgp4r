#--
# Copyright 2011 Jean-Michel Esnault.
# All rights reserved.
# See LICENSE.txt for permissions.
#
#
# This file is part of BGP4R.
# 
# BGP4R is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# BGP4R is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with BGP4R.  If not, see <http://www.gnu.org/licenses/>.
#++

require "bgp/iana"

require 'test/unit'
class TestBgpIana < Test::Unit::TestCase
  def test_afi?
    assert_equal 1, IANA.afi?(:ip)
    assert_equal 2, IANA.afi?(:ip6)
    assert_equal 5, IANA.afi?(:bbn)
    assert_equal 12, IANA.afi?(:appletalk)
    assert_equal 'IP', IANA.afi?(1)
    assert_equal 'IP6',IANA.afi?(2)
  end
  def test_safi?
    assert_equal 1, IANA.safi?(:unicast_nlri)
    assert_equal 2, IANA.safi?(:multicast_nlri)
    assert_equal 4, IANA.safi?(:label_nlri)
    assert_equal 5, IANA.safi?(:mcast_vpn)
    assert_equal 64, IANA.safi?(:tunnel)
    assert_equal 65, IANA.safi?(:vpls)
  end
end
