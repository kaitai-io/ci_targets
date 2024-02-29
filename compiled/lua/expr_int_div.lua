-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprIntDiv = class.class(KaitaiStruct)

function ExprIntDiv:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIntDiv:_read()
  self.int_u = self._io:read_u4le()
  self.int_s = self._io:read_s4le()
end

ExprIntDiv.property.div_neg_const = {}
function ExprIntDiv.property.div_neg_const:get()
  if self._m_div_neg_const ~= nil then
    return self._m_div_neg_const
  end

  self._m_div_neg_const = math.floor(-9837 / 13)
  return self._m_div_neg_const
end

ExprIntDiv.property.div_neg_seq = {}
function ExprIntDiv.property.div_neg_seq:get()
  if self._m_div_neg_seq ~= nil then
    return self._m_div_neg_seq
  end

  self._m_div_neg_seq = math.floor(self.int_s / 13)
  return self._m_div_neg_seq
end

ExprIntDiv.property.div_pos_const = {}
function ExprIntDiv.property.div_pos_const:get()
  if self._m_div_pos_const ~= nil then
    return self._m_div_pos_const
  end

  self._m_div_pos_const = math.floor(9837 / 13)
  return self._m_div_pos_const
end

ExprIntDiv.property.div_pos_seq = {}
function ExprIntDiv.property.div_pos_seq:get()
  if self._m_div_pos_seq ~= nil then
    return self._m_div_pos_seq
  end

  self._m_div_pos_seq = math.floor(self.int_u / 13)
  return self._m_div_pos_seq
end


