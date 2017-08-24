-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ProcessRotate = class.class(KaitaiStruct)

function ProcessRotate:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRotate:_read()
  self._raw_buf1 = self._io:read_bytes(5)
  self.buf1 = KaitaiStream.process_rotate_left(self._raw_buf1, 3, 1)
  self._raw_buf2 = self._io:read_bytes(5)
  self.buf2 = KaitaiStream.process_rotate_left(self._raw_buf2, 8 - (3), 1)
  self.key = self._io:read_u1()
  self._raw_buf3 = self._io:read_bytes(5)
  self.buf3 = KaitaiStream.process_rotate_left(self._raw_buf3, self.key, 1)
end


