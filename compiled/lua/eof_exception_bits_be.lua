-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

EofExceptionBitsBe = class.class(KaitaiStruct)

function EofExceptionBitsBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function EofExceptionBitsBe:_read()
  self.pre_bits = self._io:read_bits_int_be(7)
  self.fail_bits = self._io:read_bits_int_be(18)
end


