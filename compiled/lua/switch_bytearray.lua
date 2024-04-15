-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchBytearray = class.class(KaitaiStruct)

function SwitchBytearray:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchBytearray:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchBytearray.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchBytearray.Opcode = class.class(KaitaiStruct)

function SwitchBytearray.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchBytearray.Opcode:_read()
  self.code = self._io:read_bytes(1)
  local _on = self.code
  if _on == "\073" then
    self.body = SwitchBytearray.Opcode.Intval(self._io, self, self._root)
  elseif _on == "\083" then
    self.body = SwitchBytearray.Opcode.Strval(self._io, self, self._root)
  end
end


SwitchBytearray.Opcode.Intval = class.class(KaitaiStruct)

function SwitchBytearray.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchBytearray.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchBytearray.Opcode.Strval = class.class(KaitaiStruct)

function SwitchBytearray.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchBytearray.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


