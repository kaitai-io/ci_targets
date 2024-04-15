-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

SwitchElseOnly = class.class(KaitaiStruct)

function SwitchElseOnly:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchElseOnly:_read()
  self.opcode = self._io:read_s1()
  self.prim_byte = self._io:read_s1()
  self.indicator = self._io:read_bytes(4)
  self.ut = SwitchElseOnly.Data(self._io, self, self._root)
end


SwitchElseOnly.Data = class.class(KaitaiStruct)

function SwitchElseOnly.Data:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchElseOnly.Data:_read()
  self.value = self._io:read_bytes(4)
end


