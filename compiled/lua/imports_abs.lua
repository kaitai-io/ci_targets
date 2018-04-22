-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("vlq_base128_le")
ImportsAbs = class.class(KaitaiStruct)

function ImportsAbs:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsAbs:_read()
  self.len = VlqBase128Le(self._io)
  self.body = self._io:read_bytes(self.len.value)
end


