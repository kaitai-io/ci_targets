-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchManualStr = class.class(KaitaiStruct)

function SwitchManualStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStr:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchManualStr.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualStr.Opcode = class.class(KaitaiStruct)

function SwitchManualStr.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStr.Opcode:_read()
  self.code = str_decode.decode(self._io:read_bytes(1), "ASCII")
  local _on = self.code
  if _on == "I" then
    self.body = SwitchManualStr.Opcode.Intval(self._io, self, self._root)
  elseif _on == "S" then
    self.body = SwitchManualStr.Opcode.Strval(self._io, self, self._root)
  end
end


SwitchManualStr.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualStr.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStr.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualStr.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualStr.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStr.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


