-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

StrLiterals = class.class(KaitaiStruct)

function StrLiterals:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrLiterals:_read()
end

StrLiterals.property.octal_eatup2 = {}
function StrLiterals.property.octal_eatup2:get()
  if self._m_octal_eatup2 ~= nil then
    return self._m_octal_eatup2
  end

  self._m_octal_eatup2 = "\0022"
  return self._m_octal_eatup2
end

StrLiterals.property.backslashes = {}
function StrLiterals.property.backslashes:get()
  if self._m_backslashes ~= nil then
    return self._m_backslashes
  end

  self._m_backslashes = "\\\\\\"
  return self._m_backslashes
end

StrLiterals.property.octal_eatup = {}
function StrLiterals.property.octal_eatup:get()
  if self._m_octal_eatup ~= nil then
    return self._m_octal_eatup
  end

  self._m_octal_eatup = "\00022"
  return self._m_octal_eatup
end

StrLiterals.property.double_quotes = {}
function StrLiterals.property.double_quotes:get()
  if self._m_double_quotes ~= nil then
    return self._m_double_quotes
  end

  self._m_double_quotes = "\"\"\""
  return self._m_double_quotes
end

StrLiterals.property.complex_str = {}
function StrLiterals.property.complex_str:get()
  if self._m_complex_str ~= nil then
    return self._m_complex_str
  end

  self._m_complex_str = "\000\001\002\a\b\n\r\t\v\f\027=\a\n$\u{263b}"
  return self._m_complex_str
end


