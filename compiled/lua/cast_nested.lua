-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

CastNested = class.class(KaitaiStruct)

function CastNested:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastNested:_read()
  self.opcodes = {}
  local i = 1
  while not self._io:is_eof() do
    self.opcodes[i] = CastNested.Opcode(self._io, self, self._root)
    i = i + 1
  end
end

CastNested.property.opcodes_0_str = {}
function CastNested.property.opcodes_0_str:get()
  if self._m_opcodes_0_str ~= nil then
    return self._m_opcodes_0_str
  end

  self._m_opcodes_0_str = self.opcodes[1].body
  return self._m_opcodes_0_str
end

CastNested.property.opcodes_0_str_value = {}
function CastNested.property.opcodes_0_str_value:get()
  if self._m_opcodes_0_str_value ~= nil then
    return self._m_opcodes_0_str_value
  end

  self._m_opcodes_0_str_value = self.opcodes[1].body.value
  return self._m_opcodes_0_str_value
end

CastNested.property.opcodes_1_int = {}
function CastNested.property.opcodes_1_int:get()
  if self._m_opcodes_1_int ~= nil then
    return self._m_opcodes_1_int
  end

  self._m_opcodes_1_int = self.opcodes[2].body
  return self._m_opcodes_1_int
end

CastNested.property.opcodes_1_int_value = {}
function CastNested.property.opcodes_1_int_value:get()
  if self._m_opcodes_1_int_value ~= nil then
    return self._m_opcodes_1_int_value
  end

  self._m_opcodes_1_int_value = self.opcodes[2].body.value
  return self._m_opcodes_1_int_value
end


CastNested.Opcode = class.class(KaitaiStruct)

function CastNested.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastNested.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 73 then
    self.body = CastNested.Opcode.Intval(self._io, self, self._root)
  elseif _on == 83 then
    self.body = CastNested.Opcode.Strval(self._io, self, self._root)
  end
end


CastNested.Opcode.Intval = class.class(KaitaiStruct)

function CastNested.Opcode.Intval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastNested.Opcode.Intval:_read()
  self.value = self._io:read_u1()
end


CastNested.Opcode.Strval = class.class(KaitaiStruct)

function CastNested.Opcode.Strval:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastNested.Opcode.Strval:_read()
  self.value = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


