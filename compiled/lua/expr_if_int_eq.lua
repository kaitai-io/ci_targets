-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprIfIntEq = class.class(KaitaiStruct)

function ExprIfIntEq:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIfIntEq:_read()
  self.skip = self._io:read_bytes(2)
  self.seq = self._io:read_s2le()
  if true then
    self.seq_if = self._io:read_s2le()
  end
end

ExprIfIntEq.property.calc = {}
function ExprIfIntEq.property.calc:get()
  if self._m_calc ~= nil then
    return self._m_calc
  end

  self._m_calc = 16705
  return self._m_calc
end

ExprIfIntEq.property.calc_eq_calc_if = {}
function ExprIfIntEq.property.calc_eq_calc_if:get()
  if self._m_calc_eq_calc_if ~= nil then
    return self._m_calc_eq_calc_if
  end

  self._m_calc_eq_calc_if = self.calc == self.calc_if
  return self._m_calc_eq_calc_if
end

ExprIfIntEq.property.calc_eq_lit = {}
function ExprIfIntEq.property.calc_eq_lit:get()
  if self._m_calc_eq_lit ~= nil then
    return self._m_calc_eq_lit
  end

  self._m_calc_eq_lit = self.calc == 16705
  return self._m_calc_eq_lit
end

ExprIfIntEq.property.calc_eq_seq_if = {}
function ExprIfIntEq.property.calc_eq_seq_if:get()
  if self._m_calc_eq_seq_if ~= nil then
    return self._m_calc_eq_seq_if
  end

  self._m_calc_eq_seq_if = self.calc == self.seq_if
  return self._m_calc_eq_seq_if
end

ExprIfIntEq.property.calc_if = {}
function ExprIfIntEq.property.calc_if:get()
  if self._m_calc_if ~= nil then
    return self._m_calc_if
  end

  if true then
    self._m_calc_if = 16705
  end
  return self._m_calc_if
end

ExprIfIntEq.property.calc_if_eq_lit = {}
function ExprIfIntEq.property.calc_if_eq_lit:get()
  if self._m_calc_if_eq_lit ~= nil then
    return self._m_calc_if_eq_lit
  end

  self._m_calc_if_eq_lit = self.calc_if == 16705
  return self._m_calc_if_eq_lit
end

ExprIfIntEq.property.calc_if_eq_seq_if = {}
function ExprIfIntEq.property.calc_if_eq_seq_if:get()
  if self._m_calc_if_eq_seq_if ~= nil then
    return self._m_calc_if_eq_seq_if
  end

  self._m_calc_if_eq_seq_if = self.calc_if == self.seq_if
  return self._m_calc_if_eq_seq_if
end

ExprIfIntEq.property.seq_eq_calc = {}
function ExprIfIntEq.property.seq_eq_calc:get()
  if self._m_seq_eq_calc ~= nil then
    return self._m_seq_eq_calc
  end

  self._m_seq_eq_calc = self.seq == self.calc
  return self._m_seq_eq_calc
end

ExprIfIntEq.property.seq_eq_calc_if = {}
function ExprIfIntEq.property.seq_eq_calc_if:get()
  if self._m_seq_eq_calc_if ~= nil then
    return self._m_seq_eq_calc_if
  end

  self._m_seq_eq_calc_if = self.seq == self.calc_if
  return self._m_seq_eq_calc_if
end

ExprIfIntEq.property.seq_eq_lit = {}
function ExprIfIntEq.property.seq_eq_lit:get()
  if self._m_seq_eq_lit ~= nil then
    return self._m_seq_eq_lit
  end

  self._m_seq_eq_lit = self.seq == 16705
  return self._m_seq_eq_lit
end

ExprIfIntEq.property.seq_eq_seq_if = {}
function ExprIfIntEq.property.seq_eq_seq_if:get()
  if self._m_seq_eq_seq_if ~= nil then
    return self._m_seq_eq_seq_if
  end

  self._m_seq_eq_seq_if = self.seq == self.seq_if
  return self._m_seq_eq_seq_if
end

ExprIfIntEq.property.seq_if_eq_lit = {}
function ExprIfIntEq.property.seq_if_eq_lit:get()
  if self._m_seq_if_eq_lit ~= nil then
    return self._m_seq_if_eq_lit
  end

  self._m_seq_if_eq_lit = self.seq_if == 16705
  return self._m_seq_if_eq_lit
end


