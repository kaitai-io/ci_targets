-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")
local utils = require("utils")

ExprArray = class.class(KaitaiStruct)

function ExprArray:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprArray:_read()
  self.aint = {}
  for i = 0, 4 - 1 do
    self.aint[i + 1] = self._io:read_u4le()
  end
  self.afloat = {}
  for i = 0, 3 - 1 do
    self.afloat[i + 1] = self._io:read_f8le()
  end
  self.astr = {}
  for i = 0, 3 - 1 do
    self.astr[i + 1] = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  end
end

ExprArray.property.afloat_min = {}
function ExprArray.property.afloat_min:get()
  if self._m_afloat_min ~= nil then
    return self._m_afloat_min
  end

  self._m_afloat_min = utils.array_min(self.afloat)
  return self._m_afloat_min
end

ExprArray.property.astr_first = {}
function ExprArray.property.astr_first:get()
  if self._m_astr_first ~= nil then
    return self._m_astr_first
  end

  self._m_astr_first = self.astr[1]
  return self._m_astr_first
end

ExprArray.property.astr_max = {}
function ExprArray.property.astr_max:get()
  if self._m_astr_max ~= nil then
    return self._m_astr_max
  end

  self._m_astr_max = utils.array_max(self.astr)
  return self._m_astr_max
end

ExprArray.property.afloat_last = {}
function ExprArray.property.afloat_last:get()
  if self._m_afloat_last ~= nil then
    return self._m_afloat_last
  end

  self._m_afloat_last = self.afloat[#self.afloat]
  return self._m_afloat_last
end

ExprArray.property.afloat_size = {}
function ExprArray.property.afloat_size:get()
  if self._m_afloat_size ~= nil then
    return self._m_afloat_size
  end

  self._m_afloat_size = #self.afloat
  return self._m_afloat_size
end

ExprArray.property.astr_size = {}
function ExprArray.property.astr_size:get()
  if self._m_astr_size ~= nil then
    return self._m_astr_size
  end

  self._m_astr_size = #self.astr
  return self._m_astr_size
end

ExprArray.property.afloat_first = {}
function ExprArray.property.afloat_first:get()
  if self._m_afloat_first ~= nil then
    return self._m_afloat_first
  end

  self._m_afloat_first = self.afloat[1]
  return self._m_afloat_first
end

ExprArray.property.astr_min = {}
function ExprArray.property.astr_min:get()
  if self._m_astr_min ~= nil then
    return self._m_astr_min
  end

  self._m_astr_min = utils.array_min(self.astr)
  return self._m_astr_min
end

ExprArray.property.aint_size = {}
function ExprArray.property.aint_size:get()
  if self._m_aint_size ~= nil then
    return self._m_aint_size
  end

  self._m_aint_size = #self.aint
  return self._m_aint_size
end

ExprArray.property.aint_last = {}
function ExprArray.property.aint_last:get()
  if self._m_aint_last ~= nil then
    return self._m_aint_last
  end

  self._m_aint_last = self.aint[#self.aint]
  return self._m_aint_last
end

ExprArray.property.astr_last = {}
function ExprArray.property.astr_last:get()
  if self._m_astr_last ~= nil then
    return self._m_astr_last
  end

  self._m_astr_last = self.astr[#self.astr]
  return self._m_astr_last
end

ExprArray.property.aint_min = {}
function ExprArray.property.aint_min:get()
  if self._m_aint_min ~= nil then
    return self._m_aint_min
  end

  self._m_aint_min = utils.array_min(self.aint)
  return self._m_aint_min
end

ExprArray.property.afloat_max = {}
function ExprArray.property.afloat_max:get()
  if self._m_afloat_max ~= nil then
    return self._m_afloat_max
  end

  self._m_afloat_max = utils.array_max(self.afloat)
  return self._m_afloat_max
end

ExprArray.property.aint_max = {}
function ExprArray.property.aint_max:get()
  if self._m_aint_max ~= nil then
    return self._m_aint_max
  end

  self._m_aint_max = utils.array_max(self.aint)
  return self._m_aint_max
end

ExprArray.property.aint_first = {}
function ExprArray.property.aint_first:get()
  if self._m_aint_first ~= nil then
    return self._m_aint_first
  end

  self._m_aint_first = self.aint[1]
  return self._m_aint_first
end


