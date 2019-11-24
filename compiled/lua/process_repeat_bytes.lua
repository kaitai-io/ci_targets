-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ProcessRepeatBytes = class.class(KaitaiStruct)

function ProcessRepeatBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatBytes:_read()
  self.bufs = {}
  for i = 1, 2 do
    self._raw_bufs[i] = self._io:read_bytes(5)
    self.bufs = KaitaiStream.process_xor_one(self._raw_bufs, 158)
  end
end


