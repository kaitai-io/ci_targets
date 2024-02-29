-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchManualStrElse = class.class(KaitaiStruct)

function SwitchManualStrElse:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStrElse:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchManualStrElse.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualStrElse.Opcode = class.class(KaitaiStruct)

function SwitchManualStrElse.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStrElse.Opcode:_read()
  self.code = str_decode.decode(self._io:read_bytes(1), "ASCII")
  local _on = self.code
  if _on == "I" then
    self.body = SwitchManualStrElse.Opcode.Intval(self._io, self, self._root)
  elseif _on == "S" then
    self.body = SwitchManualStrElse.Opcode.Strval(self._io, self, self._root)
  else
    self.body = SwitchManualStrElse.Opcode.Noneval(self._io, self, self._root)
  end
end


SwitchManualStrElse.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualStrElse.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStrElse.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualStrElse.Opcode.Noneval = class.class(KaitaiStruct)

function SwitchManualStrElse.Opcode.Noneval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStrElse.Opcode.Noneval:_read()
  self.filler = self._io:read_u4le()
end


SwitchManualStrElse.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualStrElse.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualStrElse.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


