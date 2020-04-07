-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchManualIntElse = class.class(KaitaiStruct)

function SwitchManualIntElse:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntElse:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchManualIntElse.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualIntElse.Opcode = class.class(KaitaiStruct)

function SwitchManualIntElse.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntElse.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 73 then
    self.body = SwitchManualIntElse.Opcode.Intval(self._io, self, self._root)
  elseif _on == 83 then
    self.body = SwitchManualIntElse.Opcode.Strval(self._io, self, self._root)
  else
    self.body = SwitchManualIntElse.Opcode.Noneval(self._io, self, self._root)
  end
end


SwitchManualIntElse.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualIntElse.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntElse.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualIntElse.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualIntElse.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntElse.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


SwitchManualIntElse.Opcode.Noneval = class.class(KaitaiStruct)

function SwitchManualIntElse.Opcode.Noneval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntElse.Opcode.Noneval:_read()
  self.filler = self._io:read_u4le()
end


