-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

SwitchManualEnum = class.class(KaitaiStruct)

function SwitchManualEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnum:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchManualEnum.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualEnum.Opcode = class.class(KaitaiStruct)

SwitchManualEnum.Opcode.CodeEnum = enum.Enum {
  intval = 73,
  strval = 83,
}

function SwitchManualEnum.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnum.Opcode:_read()
  self.code = SwitchManualEnum.Opcode.CodeEnum(self._io:read_u1())
  local _on = self.code
  if _on == SwitchManualEnum.Opcode.CodeEnum.intval then
    self.body = SwitchManualEnum.Opcode.Intval(self._io, self, self._root)
  elseif _on == SwitchManualEnum.Opcode.CodeEnum.strval then
    self.body = SwitchManualEnum.Opcode.Strval(self._io, self, self._root)
  end
end


SwitchManualEnum.Opcode.Intval = class.class(KaitaiStruct)

function SwitchManualEnum.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnum.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchManualEnum.Opcode.Strval = class.class(KaitaiStruct)

function SwitchManualEnum.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualEnum.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


