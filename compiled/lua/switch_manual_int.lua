-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchManualInt = class.class(KaitaiStruct)

function SwitchManualInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualInt:_read()
  self.opcodes = {}
  local i = 1
  while not self._io:is_eof() do
    self.opcodes[i] = SwitchManualInt.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualInt.Opcode = class.class(KaitaiStruct)

function SwitchManualInt.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualInt.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 73 then
    self.body = SwitchManualInt.Opcode.Intval(self._io, self, self._root)
  elseif _on == 83 then
    self.body = SwitchManualInt.Opcode.Strval(self._io, self, self._root)
  end
end


SwitchManualInt.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualInt.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualInt.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualInt.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualInt.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualInt.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


