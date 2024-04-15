-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

SwitchManualEnumInvalid = class.class(KaitaiStruct)

function SwitchManualEnumInvalid:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnumInvalid:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchManualEnumInvalid.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualEnumInvalid.Opcode = class.class(KaitaiStruct)

SwitchManualEnumInvalid.Opcode.CodeEnum = enum.Enum {
  intval = 73,
  strval = 83,
}

function SwitchManualEnumInvalid.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualEnumInvalid.Opcode:_read()
  self.code = SwitchManualEnumInvalid.Opcode.CodeEnum(self._io:read_u1())
  local _on = self.code
  if _on == SwitchManualEnumInvalid.Opcode.CodeEnum.intval then
    self.body = SwitchManualEnumInvalid.Opcode.Intval(self._io, self, self._root)
  elseif _on == SwitchManualEnumInvalid.Opcode.CodeEnum.strval then
    self.body = SwitchManualEnumInvalid.Opcode.Strval(self._io, self, self._root)
  end
end


SwitchManualEnumInvalid.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualEnumInvalid.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualEnumInvalid.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualEnumInvalid.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualEnumInvalid.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualEnumInvalid.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


