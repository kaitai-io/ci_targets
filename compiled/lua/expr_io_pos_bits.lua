-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprIoPosBits = class.class(KaitaiStruct)

function ExprIoPosBits:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoPosBits:_read()
  self.foo = self._io:read_bits_int_be(3)
  if self._io:pos() == 1 then
    self.bar = self._io:read_bits_int_be(5)
  end
  if self._io:pos() == 1 then
    self.baz = self._io:read_bits_int_be(1) ~= 0
  end
  if self._io:pos() == 2 then
    self.qux = self._io:read_bits_int_be(7)
  end
end


