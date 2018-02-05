-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

SwitchIntegers = class.class(KaitaiStruct)

function SwitchIntegers:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchIntegers:_read()
  self.opcodes = {}
  local i = 1
  while not self._io:is_eof() do
    self.opcodes[i] = SwitchIntegers.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchIntegers.Opcode = class.class(KaitaiStruct)

function SwitchIntegers.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchIntegers.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 1 then
    self.body = self._io:read_u1()
  elseif _on == 2 then
    self.body = self._io:read_u2le()
  elseif _on == 4 then
    self.body = self._io:read_u4le()
  elseif _on == 8 then
    self.body = self._io:read_u8le()
  end
end


