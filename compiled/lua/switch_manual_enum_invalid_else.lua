-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

SwitchManualEnumInvalidElse = class.class(KaitaiStruct)

function SwitchManualEnumInvalidElse:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalidElse:_read()
  self.opcodes = {}
  local i = 1
  while not self._io:is_eof() do
    self.opcodes[i] = SwitchManualEnumInvalidElse.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualEnumInvalidElse.Opcode = class.class(KaitaiStruct)

SwitchManualEnumInvalidElse.Opcode.CodeEnum = enum.Enum {
  intval = 73,
  strval = 83,
}

function SwitchManualEnumInvalidElse.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalidElse.Opcode:_read()
  self.code = SwitchManualEnumInvalidElse.Opcode.CodeEnum(self._io:read_u1())
  local _on = self.code
  if _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.intval then
    self.body = SwitchManualEnumInvalidElse.Opcode.Intval(self._io, self, self._root)
  elseif _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.strval then
    self.body = SwitchManualEnumInvalidElse.Opcode.Strval(self._io, self, self._root)
  else
    self.body = SwitchManualEnumInvalidElse.Opcode.Defval(self._io, self, self._root)
  end
end


SwitchManualEnumInvalidElse.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualEnumInvalidElse.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalidElse.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualEnumInvalidElse.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualEnumInvalidElse.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalidElse.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


SwitchManualEnumInvalidElse.Opcode.Defval = class.class(KaitaiStruct)

function SwitchManualEnumInvalidElse.Opcode.Defval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalidElse.Opcode.Defval:_read()
end

SwitchManualEnumInvalidElse.Opcode.Defval.property.value = {}
function SwitchManualEnumInvalidElse.Opcode.Defval.property.value:get()
  if self._m_value ~= nil then
    return self._m_value
  end

  self._m_value = 123
  return self._m_value
end


