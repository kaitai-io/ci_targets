-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

FloatToI = class.class(KaitaiStruct)

function FloatToI:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function FloatToI:_read()
  self.single_value = self._io:read_f4le()
  self.double_value = self._io:read_f8le()
end

FloatToI.property.calc_float1 = {}
function FloatToI.property.calc_float1:get()
  if self._m_calc_float1 ~= nil then
    return self._m_calc_float1
  end

  self._m_calc_float1 = 1.234
  return self._m_calc_float1
end

FloatToI.property.calc_float2 = {}
function FloatToI.property.calc_float2:get()
  if self._m_calc_float2 ~= nil then
    return self._m_calc_float2
  end

  self._m_calc_float2 = 1.5
  return self._m_calc_float2
end

FloatToI.property.calc_float3 = {}
function FloatToI.property.calc_float3:get()
  if self._m_calc_float3 ~= nil then
    return self._m_calc_float3
  end

  self._m_calc_float3 = 1.9
  return self._m_calc_float3
end

FloatToI.property.calc_float4 = {}
function FloatToI.property.calc_float4:get()
  if self._m_calc_float4 ~= nil then
    return self._m_calc_float4
  end

  self._m_calc_float4 = -2.7
  return self._m_calc_float4
end

FloatToI.property.double_i = {}
function FloatToI.property.double_i:get()
  if self._m_double_i ~= nil then
    return self._m_double_i
  end

  self._m_double_i = (self.double_value > 0) and math.floor(self.double_value) or math.ceil(self.double_value)
  return self._m_double_i
end

FloatToI.property.float1_i = {}
function FloatToI.property.float1_i:get()
  if self._m_float1_i ~= nil then
    return self._m_float1_i
  end

  self._m_float1_i = (self.calc_float1 > 0) and math.floor(self.calc_float1) or math.ceil(self.calc_float1)
  return self._m_float1_i
end

FloatToI.property.float2_i = {}
function FloatToI.property.float2_i:get()
  if self._m_float2_i ~= nil then
    return self._m_float2_i
  end

  self._m_float2_i = (self.calc_float2 > 0) and math.floor(self.calc_float2) or math.ceil(self.calc_float2)
  return self._m_float2_i
end

FloatToI.property.float3_i = {}
function FloatToI.property.float3_i:get()
  if self._m_float3_i ~= nil then
    return self._m_float3_i
  end

  self._m_float3_i = (self.calc_float3 > 0) and math.floor(self.calc_float3) or math.ceil(self.calc_float3)
  return self._m_float3_i
end

FloatToI.property.float4_i = {}
function FloatToI.property.float4_i:get()
  if self._m_float4_i ~= nil then
    return self._m_float4_i
  end

  self._m_float4_i = (self.calc_float4 > 0) and math.floor(self.calc_float4) or math.ceil(self.calc_float4)
  return self._m_float4_i
end

FloatToI.property.single_i = {}
function FloatToI.property.single_i:get()
  if self._m_single_i ~= nil then
    return self._m_single_i
  end

  self._m_single_i = (self.single_value > 0) and math.floor(self.single_value) or math.ceil(self.single_value)
  return self._m_single_i
end


