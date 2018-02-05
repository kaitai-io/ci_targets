-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprMod = class.class(KaitaiStruct)

function ExprMod:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprMod:_read()
  self.int_u = self._io:read_u4le()
  self.int_s = self._io:read_s4le()
end

ExprMod.property.mod_pos_const = {}
function ExprMod.property.mod_pos_const:get()
  if self._m_mod_pos_const ~= nil then
    return self._m_mod_pos_const
  end

  self._m_mod_pos_const = (9837 % 13)
  return self._m_mod_pos_const
end

ExprMod.property.mod_neg_const = {}
function ExprMod.property.mod_neg_const:get()
  if self._m_mod_neg_const ~= nil then
    return self._m_mod_neg_const
  end

  self._m_mod_neg_const = (-9837 % 13)
  return self._m_mod_neg_const
end

ExprMod.property.mod_pos_seq = {}
function ExprMod.property.mod_pos_seq:get()
  if self._m_mod_pos_seq ~= nil then
    return self._m_mod_pos_seq
  end

  self._m_mod_pos_seq = (self.int_u % 13)
  return self._m_mod_pos_seq
end

ExprMod.property.mod_neg_seq = {}
function ExprMod.property.mod_neg_seq:get()
  if self._m_mod_neg_seq ~= nil then
    return self._m_mod_neg_seq
  end

  self._m_mod_neg_seq = (self.int_s % 13)
  return self._m_mod_neg_seq
end


