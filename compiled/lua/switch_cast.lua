-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

SwitchCast = class.class(KaitaiStruct)

function SwitchCast:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchCast:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchCast.Opcode(self._io, self, self._root)
    i = i + 1
  end
end

SwitchCast.property.err_cast = {}
function SwitchCast.property.err_cast:get()
  if self._m_err_cast ~= nil then
    return self._m_err_cast
  end

  self._m_err_cast = self.opcodes[2 + 1].body
  return self._m_err_cast
end

SwitchCast.property.first_obj = {}
function SwitchCast.property.first_obj:get()
  if self._m_first_obj ~= nil then
    return self._m_first_obj
  end

  self._m_first_obj = self.opcodes[0 + 1].body
  return self._m_first_obj
end

SwitchCast.property.second_val = {}
function SwitchCast.property.second_val:get()
  if self._m_second_val ~= nil then
    return self._m_second_val
  end

  self._m_second_val = self.opcodes[1 + 1].body.value
  return self._m_second_val
end


SwitchCast.Intval = class.class(KaitaiStruct)

function SwitchCast.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchCast.Intval:_read()
  self.value = self._io:read_u1()
end


SwitchCast.Opcode = class.class(KaitaiStruct)

function SwitchCast.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchCast.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 73 then
    self.body = SwitchCast.Intval(self._io, self, self._root)
  elseif _on == 83 then
    self.body = SwitchCast.Strval(self._io, self, self._root)
  end
end


SwitchCast.Strval = class.class(KaitaiStruct)

function SwitchCast.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchCast.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


