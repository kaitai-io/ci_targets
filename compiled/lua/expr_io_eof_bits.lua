-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprIoEofBits = class.class(KaitaiStruct)

function ExprIoEofBits:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function ExprIoEofBits:_read()
  self.foo = self._io:read_bits_int_be(20)
  if not(self._io:is_eof()) then
    self.bar = self._io:read_bits_int_be(4)
  end
  if not(self._io:is_eof()) then
    self.baz = self._io:read_bits_int_be(16)
  end
  self._io:align_to_byte()
  self.align = self._io:read_bytes(0)
  if not(self._io:is_eof()) then
    self.qux = self._io:read_bits_int_be(16)
  end
end


