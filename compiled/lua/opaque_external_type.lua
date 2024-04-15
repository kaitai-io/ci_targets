-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("term_strz")

OpaqueExternalType = class.class(KaitaiStruct)

function OpaqueExternalType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OpaqueExternalType:_read()
  self.one = TermStrz(self._io)
end


