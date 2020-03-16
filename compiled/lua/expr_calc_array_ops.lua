-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

ExprCalcArrayOps = class.class(KaitaiStruct)

function ExprCalcArrayOps:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprCalcArrayOps:_read()
end

ExprCalcArrayOps.property.double_array = {}
function ExprCalcArrayOps.property.double_array:get()
  if self._m_double_array ~= nil then
    return self._m_double_array
  end

  self._m_double_array = {10.0, 25.0, 50.0, 100.0, 3.14159}
  return self._m_double_array
end

ExprCalcArrayOps.property.int_array_size = {}
function ExprCalcArrayOps.property.int_array_size:get()
  if self._m_int_array_size ~= nil then
    return self._m_int_array_size
  end

  self._m_int_array_size = #self.int_array
  return self._m_int_array_size
end

ExprCalcArrayOps.property.int_array_max = {}
function ExprCalcArrayOps.property.int_array_max:get()
  if self._m_int_array_max ~= nil then
    return self._m_int_array_max
  end

  self._m_int_array_max = utils.array_max(self.int_array)
  return self._m_int_array_max
end

ExprCalcArrayOps.property.double_array_max = {}
function ExprCalcArrayOps.property.double_array_max:get()
  if self._m_double_array_max ~= nil then
    return self._m_double_array_max
  end

  self._m_double_array_max = utils.array_max(self.double_array)
  return self._m_double_array_max
end

ExprCalcArrayOps.property.str_array_max = {}
function ExprCalcArrayOps.property.str_array_max:get()
  if self._m_str_array_max ~= nil then
    return self._m_str_array_max
  end

  self._m_str_array_max = utils.array_max(self.str_array)
  return self._m_str_array_max
end

ExprCalcArrayOps.property.str_array_min = {}
function ExprCalcArrayOps.property.str_array_min:get()
  if self._m_str_array_min ~= nil then
    return self._m_str_array_min
  end

  self._m_str_array_min = utils.array_min(self.str_array)
  return self._m_str_array_min
end

ExprCalcArrayOps.property.double_array_mid = {}
function ExprCalcArrayOps.property.double_array_mid:get()
  if self._m_double_array_mid ~= nil then
    return self._m_double_array_mid
  end

  self._m_double_array_mid = self.double_array[2]
  return self._m_double_array_mid
end

ExprCalcArrayOps.property.str_array = {}
function ExprCalcArrayOps.property.str_array:get()
  if self._m_str_array ~= nil then
    return self._m_str_array
  end

  self._m_str_array = {"un", "deux", "trois", "quatre"}
  return self._m_str_array
end

ExprCalcArrayOps.property.double_array_size = {}
function ExprCalcArrayOps.property.double_array_size:get()
  if self._m_double_array_size ~= nil then
    return self._m_double_array_size
  end

  self._m_double_array_size = #self.double_array
  return self._m_double_array_size
end

ExprCalcArrayOps.property.str_array_first = {}
function ExprCalcArrayOps.property.str_array_first:get()
  if self._m_str_array_first ~= nil then
    return self._m_str_array_first
  end

  self._m_str_array_first = self.str_array[1]
  return self._m_str_array_first
end

ExprCalcArrayOps.property.str_array_last = {}
function ExprCalcArrayOps.property.str_array_last:get()
  if self._m_str_array_last ~= nil then
    return self._m_str_array_last
  end

  self._m_str_array_last = self.str_array[#self.str_array]
  return self._m_str_array_last
end

ExprCalcArrayOps.property.str_array_mid = {}
function ExprCalcArrayOps.property.str_array_mid:get()
  if self._m_str_array_mid ~= nil then
    return self._m_str_array_mid
  end

  self._m_str_array_mid = self.str_array[2]
  return self._m_str_array_mid
end

ExprCalcArrayOps.property.double_array_last = {}
function ExprCalcArrayOps.property.double_array_last:get()
  if self._m_double_array_last ~= nil then
    return self._m_double_array_last
  end

  self._m_double_array_last = self.double_array[#self.double_array]
  return self._m_double_array_last
end

ExprCalcArrayOps.property.int_array_min = {}
function ExprCalcArrayOps.property.int_array_min:get()
  if self._m_int_array_min ~= nil then
    return self._m_int_array_min
  end

  self._m_int_array_min = utils.array_min(self.int_array)
  return self._m_int_array_min
end

ExprCalcArrayOps.property.str_array_size = {}
function ExprCalcArrayOps.property.str_array_size:get()
  if self._m_str_array_size ~= nil then
    return self._m_str_array_size
  end

  self._m_str_array_size = #self.str_array
  return self._m_str_array_size
end

ExprCalcArrayOps.property.int_array_first = {}
function ExprCalcArrayOps.property.int_array_first:get()
  if self._m_int_array_first ~= nil then
    return self._m_int_array_first
  end

  self._m_int_array_first = self.int_array[1]
  return self._m_int_array_first
end

ExprCalcArrayOps.property.double_array_first = {}
function ExprCalcArrayOps.property.double_array_first:get()
  if self._m_double_array_first ~= nil then
    return self._m_double_array_first
  end

  self._m_double_array_first = self.double_array[1]
  return self._m_double_array_first
end

ExprCalcArrayOps.property.int_array_mid = {}
function ExprCalcArrayOps.property.int_array_mid:get()
  if self._m_int_array_mid ~= nil then
    return self._m_int_array_mid
  end

  self._m_int_array_mid = self.int_array[2]
  return self._m_int_array_mid
end

ExprCalcArrayOps.property.double_array_min = {}
function ExprCalcArrayOps.property.double_array_min:get()
  if self._m_double_array_min ~= nil then
    return self._m_double_array_min
  end

  self._m_double_array_min = utils.array_min(self.double_array)
  return self._m_double_array_min
end

ExprCalcArrayOps.property.int_array = {}
function ExprCalcArrayOps.property.int_array:get()
  if self._m_int_array ~= nil then
    return self._m_int_array
  end

  self._m_int_array = {10, 25, 50, 100, 200, 500, 1000}
  return self._m_int_array
end

ExprCalcArrayOps.property.int_array_last = {}
function ExprCalcArrayOps.property.int_array_last:get()
  if self._m_int_array_last ~= nil then
    return self._m_int_array_last
  end

  self._m_int_array_last = self.int_array[#self.int_array]
  return self._m_int_array_last
end


