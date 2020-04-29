-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

CombineBool = class.class(KaitaiStruct)

function CombineBool:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CombineBool:_read()
  self.bool_bit = self._io:read_bits_int_be(1)
end

CombineBool.property.bool_calc = {}
function CombineBool.property.bool_calc:get()
  if self._m_bool_calc ~= nil then
    return self._m_bool_calc
  end

  self._m_bool_calc = false
  return self._m_bool_calc
end

CombineBool.property.bool_calc_bit = {}
function CombineBool.property.bool_calc_bit:get()
  if self._m_bool_calc_bit ~= nil then
    return self._m_bool_calc_bit
  end

  self._m_bool_calc_bit = (((true) and (self.bool_calc)) or (self.bool_bit))
  return self._m_bool_calc_bit
end


