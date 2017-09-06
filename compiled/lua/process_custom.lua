-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("my_custom_fx")
require("custom_fx")

ProcessCustom = class.class(KaitaiStruct)

function ProcessCustom:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCustom:_read()
  self._raw_buf1 = self._io:read_bytes(5)
  _process = MyCustomFx(7, true, "\032\048\064")
  self.buf1 = _process.decode(self._raw_buf1)
  self._raw_buf2 = self._io:read_bytes(5)
  _process = Nested.Deeply.CustomFx(7)
  self.buf2 = _process.decode(self._raw_buf2)
  self.key = self._io:read_u1()
  self._raw_buf3 = self._io:read_bytes(5)
  _process = MyCustomFx(self.key, false, "\000")
  self.buf3 = _process.decode(self._raw_buf3)
end


