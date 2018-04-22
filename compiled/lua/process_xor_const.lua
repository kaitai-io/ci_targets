-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ProcessXorConst = class.class(KaitaiStruct)

function ProcessXorConst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessXorConst:_read()
  self.key = self._io:read_u1()
  self._raw_buf = self._io:read_bytes_full()
  self.buf = KaitaiStream.process_xor_one(self._raw_buf, 255)
end


