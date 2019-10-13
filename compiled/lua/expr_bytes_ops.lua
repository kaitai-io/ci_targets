-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

ExprBytesOps = class.class(KaitaiStruct)

function ExprBytesOps:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprBytesOps:_read()
  self.one = self._io:read_bytes(3)
end

ExprBytesOps.property.two_last = {}
function ExprBytesOps.property.two_last:get()
  if self._m_two_last ~= nil then
    return self._m_two_last
  end

  self._m_two_last = self.two[#self.two]
  return self._m_two_last
end

ExprBytesOps.property.two_max = {}
function ExprBytesOps.property.two_max:get()
  if self._m_two_max ~= nil then
    return self._m_two_max
  end

  self._m_two_max = utils.array_max(self.two)
  return self._m_two_max
end

ExprBytesOps.property.one_min = {}
function ExprBytesOps.property.one_min:get()
  if self._m_one_min ~= nil then
    return self._m_one_min
  end

  self._m_one_min = utils.array_min(self.one)
  return self._m_one_min
end

ExprBytesOps.property.one_first = {}
function ExprBytesOps.property.one_first:get()
  if self._m_one_first ~= nil then
    return self._m_one_first
  end

  self._m_one_first = self.one[1]
  return self._m_one_first
end

ExprBytesOps.property.one_mid = {}
function ExprBytesOps.property.one_mid:get()
  if self._m_one_mid ~= nil then
    return self._m_one_mid
  end

  self._m_one_mid = self.one[2]
  return self._m_one_mid
end

ExprBytesOps.property.two = {}
function ExprBytesOps.property.two:get()
  if self._m_two ~= nil then
    return self._m_two
  end

  self._m_two = "\065\067\075"
  return self._m_two
end

ExprBytesOps.property.two_min = {}
function ExprBytesOps.property.two_min:get()
  if self._m_two_min ~= nil then
    return self._m_two_min
  end

  self._m_two_min = utils.array_min(self.two)
  return self._m_two_min
end

ExprBytesOps.property.two_mid = {}
function ExprBytesOps.property.two_mid:get()
  if self._m_two_mid ~= nil then
    return self._m_two_mid
  end

  self._m_two_mid = self.two[2]
  return self._m_two_mid
end

ExprBytesOps.property.one_size = {}
function ExprBytesOps.property.one_size:get()
  if self._m_one_size ~= nil then
    return self._m_one_size
  end

  self._m_one_size = #self.one
  return self._m_one_size
end

ExprBytesOps.property.one_last = {}
function ExprBytesOps.property.one_last:get()
  if self._m_one_last ~= nil then
    return self._m_one_last
  end

  self._m_one_last = self.one[#self.one]
  return self._m_one_last
end

ExprBytesOps.property.two_size = {}
function ExprBytesOps.property.two_size:get()
  if self._m_two_size ~= nil then
    return self._m_two_size
  end

  self._m_two_size = #self.two
  return self._m_two_size
end

ExprBytesOps.property.one_max = {}
function ExprBytesOps.property.one_max:get()
  if self._m_one_max ~= nil then
    return self._m_one_max
  end

  self._m_one_max = utils.array_max(self.one)
  return self._m_one_max
end

ExprBytesOps.property.two_first = {}
function ExprBytesOps.property.two_first:get()
  if self._m_two_first ~= nil then
    return self._m_two_first
  end

  self._m_two_first = self.two[1]
  return self._m_two_first
end


