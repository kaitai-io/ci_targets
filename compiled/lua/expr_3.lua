-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

Expr3 = class.class(KaitaiStruct)

function Expr3:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr3:_read()
  self.one = self._io:read_u1()
  self.two = str_decode.decode(self._io:read_bytes(3), "ASCII")
end

Expr3.property.three = {}
function Expr3.property.three:get()
  if self._m_three ~= nil then
    return self._m_three
  end

  self._m_three = "@" .. self.two
  return self._m_three
end

Expr3.property.is_str_ge = {}
function Expr3.property.is_str_ge:get()
  if self._m_is_str_ge ~= nil then
    return self._m_is_str_ge
  end

  self._m_is_str_ge = self.two >= "ACK2"
  return self._m_is_str_ge
end

Expr3.property.is_str_ne = {}
function Expr3.property.is_str_ne:get()
  if self._m_is_str_ne ~= nil then
    return self._m_is_str_ne
  end

  self._m_is_str_ne = self.two ~= "ACK"
  return self._m_is_str_ne
end

Expr3.property.is_str_gt = {}
function Expr3.property.is_str_gt:get()
  if self._m_is_str_gt ~= nil then
    return self._m_is_str_gt
  end

  self._m_is_str_gt = self.two > "ACK2"
  return self._m_is_str_gt
end

Expr3.property.is_str_le = {}
function Expr3.property.is_str_le:get()
  if self._m_is_str_le ~= nil then
    return self._m_is_str_le
  end

  self._m_is_str_le = self.two <= "ACK2"
  return self._m_is_str_le
end

Expr3.property.is_str_lt2 = {}
function Expr3.property.is_str_lt2:get()
  if self._m_is_str_lt2 ~= nil then
    return self._m_is_str_lt2
  end

  self._m_is_str_lt2 = self.three < self.two
  return self._m_is_str_lt2
end

Expr3.property.test_not = {}
function Expr3.property.test_not:get()
  if self._m_test_not ~= nil then
    return self._m_test_not
  end

  self._m_test_not = not(false)
  return self._m_test_not
end

Expr3.property.is_str_lt = {}
function Expr3.property.is_str_lt:get()
  if self._m_is_str_lt ~= nil then
    return self._m_is_str_lt
  end

  self._m_is_str_lt = self.two < "ACK2"
  return self._m_is_str_lt
end

Expr3.property.four = {}
function Expr3.property.four:get()
  if self._m_four ~= nil then
    return self._m_four
  end

  self._m_four = "_" .. self.two .. "_"
  return self._m_four
end

Expr3.property.is_str_eq = {}
function Expr3.property.is_str_eq:get()
  if self._m_is_str_eq ~= nil then
    return self._m_is_str_eq
  end

  self._m_is_str_eq = self.two == "ACK"
  return self._m_is_str_eq
end


