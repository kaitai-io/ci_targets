-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ExprFstring0 = class.class(KaitaiStruct)

function ExprFstring0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprFstring0:_read()
  self.seq_str = str_decode.decode(self._io:read_bytes(5), "ASCII")
  self.seq_int = self._io:read_u1()
end

ExprFstring0.property.empty = {}
function ExprFstring0.property.empty:get()
  if self._m_empty ~= nil then
    return self._m_empty
  end

  self._m_empty = ""
  return self._m_empty
end

ExprFstring0.property.head_and_int = {}
function ExprFstring0.property.head_and_int:get()
  if self._m_head_and_int ~= nil then
    return self._m_head_and_int
  end

  self._m_head_and_int = "abc=" .. tostring(self.seq_int)
  return self._m_head_and_int
end

ExprFstring0.property.head_and_int_literal = {}
function ExprFstring0.property.head_and_int_literal:get()
  if self._m_head_and_int_literal ~= nil then
    return self._m_head_and_int_literal
  end

  self._m_head_and_int_literal = "abc=" .. tostring(123)
  return self._m_head_and_int_literal
end

ExprFstring0.property.head_and_str = {}
function ExprFstring0.property.head_and_str:get()
  if self._m_head_and_str ~= nil then
    return self._m_head_and_str
  end

  self._m_head_and_str = "abc=" .. self.seq_str
  return self._m_head_and_str
end

ExprFstring0.property.head_and_str_literal = {}
function ExprFstring0.property.head_and_str_literal:get()
  if self._m_head_and_str_literal ~= nil then
    return self._m_head_and_str_literal
  end

  self._m_head_and_str_literal = "abc=" .. "foo"
  return self._m_head_and_str_literal
end

ExprFstring0.property.literal = {}
function ExprFstring0.property.literal:get()
  if self._m_literal ~= nil then
    return self._m_literal
  end

  self._m_literal = "abc"
  return self._m_literal
end

ExprFstring0.property.literal_with_escapes = {}
function ExprFstring0.property.literal_with_escapes:get()
  if self._m_literal_with_escapes ~= nil then
    return self._m_literal_with_escapes
  end

  self._m_literal_with_escapes = "abc\n\tt"
  return self._m_literal_with_escapes
end


