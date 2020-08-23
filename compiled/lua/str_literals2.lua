-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

StrLiterals2 = class.class(KaitaiStruct)

function StrLiterals2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrLiterals2:_read()
end

StrLiterals2.property.dollar1 = {}
function StrLiterals2.property.dollar1:get()
  if self._m_dollar1 ~= nil then
    return self._m_dollar1
  end

  self._m_dollar1 = "$foo"
  return self._m_dollar1
end

StrLiterals2.property.dollar2 = {}
function StrLiterals2.property.dollar2:get()
  if self._m_dollar2 ~= nil then
    return self._m_dollar2
  end

  self._m_dollar2 = "${foo}"
  return self._m_dollar2
end

StrLiterals2.property.hash = {}
function StrLiterals2.property.hash:get()
  if self._m_hash ~= nil then
    return self._m_hash
  end

  self._m_hash = "#{foo}"
  return self._m_hash
end

StrLiterals2.property.at_sign = {}
function StrLiterals2.property.at_sign:get()
  if self._m_at_sign ~= nil then
    return self._m_at_sign
  end

  self._m_at_sign = "@foo"
  return self._m_at_sign
end


