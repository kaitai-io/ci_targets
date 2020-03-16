-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

ExprBits = class.class(KaitaiStruct)

ExprBits.Items = enum.Enum {
  foo = 1,
  bar = 2,
}

function ExprBits:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprBits:_read()
  self.enum_seq = ExprBits.Items(self._io:read_bits_int(2))
  self.a = self._io:read_bits_int(3)
  self._io:align_to_byte()
  self.byte_size = self._io:read_bytes(self.a)
  self.repeat_expr = {}
  for i = 1, self.a do
    self.repeat_expr[i] = self._io:read_s1()
  end
  local _on = self.a
  if _on == 2 then
    self.switch_on_type = self._io:read_s1()
  end
  self.switch_on_endian = ExprBits.EndianSwitch(self._io, self, self._root)
end

ExprBits.property.enum_inst = {}
function ExprBits.property.enum_inst:get()
  if self._m_enum_inst ~= nil then
    return self._m_enum_inst
  end

  self._m_enum_inst = ExprBits.Items(self.a)
  return self._m_enum_inst
end

ExprBits.property.inst_pos = {}
function ExprBits.property.inst_pos:get()
  if self._m_inst_pos ~= nil then
    return self._m_inst_pos
  end

  local _pos = self._io:pos()
  self._io:seek(self.a)
  self._m_inst_pos = self._io:read_s1()
  self._io:seek(_pos)
  return self._m_inst_pos
end


ExprBits.EndianSwitch = class.class(KaitaiStruct)

function ExprBits.EndianSwitch:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprBits.EndianSwitch:_read()
  local _on = self._parent.a
  if _on == 1 then
    self._is_le = true
  elseif _on == 2 then
    self._is_le = false
  end

  if self._is_le then
    self:_read_le()
  elseif not self._is_le then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function ExprBits.EndianSwitch:_read_le()
  self.foo = self._io:read_s2le()
end

function ExprBits.EndianSwitch:_read_be()
  self.foo = self._io:read_s2be()
end


