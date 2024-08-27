-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ExprStrOps = class.class(KaitaiStruct)

function ExprStrOps:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprStrOps:_read()
  self.one = str_decode.decode(self._io:read_bytes(5), "ASCII")
end

ExprStrOps.property.one_len = {}
function ExprStrOps.property.one_len:get()
  if self._m_one_len ~= nil then
    return self._m_one_len
  end

  self._m_one_len = string.len(self.one)
  return self._m_one_len
end

ExprStrOps.property.one_rev = {}
function ExprStrOps.property.one_rev:get()
  if self._m_one_rev ~= nil then
    return self._m_one_rev
  end

  self._m_one_rev = string.reverse(self.one)
  return self._m_one_rev
end

ExprStrOps.property.one_substr_0_to_0 = {}
function ExprStrOps.property.one_substr_0_to_0:get()
  if self._m_one_substr_0_to_0 ~= nil then
    return self._m_one_substr_0_to_0
  end

  self._m_one_substr_0_to_0 = string.sub(self.one, 0 + 1, 0)
  return self._m_one_substr_0_to_0
end

ExprStrOps.property.one_substr_0_to_3 = {}
function ExprStrOps.property.one_substr_0_to_3:get()
  if self._m_one_substr_0_to_3 ~= nil then
    return self._m_one_substr_0_to_3
  end

  self._m_one_substr_0_to_3 = string.sub(self.one, 0 + 1, 3)
  return self._m_one_substr_0_to_3
end

ExprStrOps.property.one_substr_2_to_5 = {}
function ExprStrOps.property.one_substr_2_to_5:get()
  if self._m_one_substr_2_to_5 ~= nil then
    return self._m_one_substr_2_to_5
  end

  self._m_one_substr_2_to_5 = string.sub(self.one, 2 + 1, 5)
  return self._m_one_substr_2_to_5
end

ExprStrOps.property.one_substr_3_to_3 = {}
function ExprStrOps.property.one_substr_3_to_3:get()
  if self._m_one_substr_3_to_3 ~= nil then
    return self._m_one_substr_3_to_3
  end

  self._m_one_substr_3_to_3 = string.sub(self.one, 3 + 1, 3)
  return self._m_one_substr_3_to_3
end

ExprStrOps.property.to_i_attr = {}
function ExprStrOps.property.to_i_attr:get()
  if self._m_to_i_attr ~= nil then
    return self._m_to_i_attr
  end

  self._m_to_i_attr = tonumber("9173")
  return self._m_to_i_attr
end

ExprStrOps.property.to_i_r10 = {}
function ExprStrOps.property.to_i_r10:get()
  if self._m_to_i_r10 ~= nil then
    return self._m_to_i_r10
  end

  self._m_to_i_r10 = tonumber("-072")
  return self._m_to_i_r10
end

ExprStrOps.property.to_i_r16 = {}
function ExprStrOps.property.to_i_r16:get()
  if self._m_to_i_r16 ~= nil then
    return self._m_to_i_r16
  end

  self._m_to_i_r16 = tonumber("47cf", 16)
  return self._m_to_i_r16
end

ExprStrOps.property.to_i_r2 = {}
function ExprStrOps.property.to_i_r2:get()
  if self._m_to_i_r2 ~= nil then
    return self._m_to_i_r2
  end

  self._m_to_i_r2 = tonumber("1010110", 2)
  return self._m_to_i_r2
end

ExprStrOps.property.to_i_r8 = {}
function ExprStrOps.property.to_i_r8:get()
  if self._m_to_i_r8 ~= nil then
    return self._m_to_i_r8
  end

  self._m_to_i_r8 = tonumber("721", 8)
  return self._m_to_i_r8
end

ExprStrOps.property.two = {}
function ExprStrOps.property.two:get()
  if self._m_two ~= nil then
    return self._m_two
  end

  self._m_two = "0123456789"
  return self._m_two
end

ExprStrOps.property.two_len = {}
function ExprStrOps.property.two_len:get()
  if self._m_two_len ~= nil then
    return self._m_two_len
  end

  self._m_two_len = string.len(self.two)
  return self._m_two_len
end

ExprStrOps.property.two_rev = {}
function ExprStrOps.property.two_rev:get()
  if self._m_two_rev ~= nil then
    return self._m_two_rev
  end

  self._m_two_rev = string.reverse(self.two)
  return self._m_two_rev
end

ExprStrOps.property.two_substr_0_to_10 = {}
function ExprStrOps.property.two_substr_0_to_10:get()
  if self._m_two_substr_0_to_10 ~= nil then
    return self._m_two_substr_0_to_10
  end

  self._m_two_substr_0_to_10 = string.sub(self.two, 0 + 1, 10)
  return self._m_two_substr_0_to_10
end

ExprStrOps.property.two_substr_0_to_7 = {}
function ExprStrOps.property.two_substr_0_to_7:get()
  if self._m_two_substr_0_to_7 ~= nil then
    return self._m_two_substr_0_to_7
  end

  self._m_two_substr_0_to_7 = string.sub(self.two, 0 + 1, 7)
  return self._m_two_substr_0_to_7
end

ExprStrOps.property.two_substr_4_to_10 = {}
function ExprStrOps.property.two_substr_4_to_10:get()
  if self._m_two_substr_4_to_10 ~= nil then
    return self._m_two_substr_4_to_10
  end

  self._m_two_substr_4_to_10 = string.sub(self.two, 4 + 1, 10)
  return self._m_two_substr_4_to_10
end


