-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

Expr1 = class.class(KaitaiStruct)

function Expr1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr1:_read()
  self.len_of_1 = self._io:read_u2le()
  self.str1 = str_decode.decode(self._io:read_bytes(self.len_of_1_mod), "ASCII")
end

Expr1.property.len_of_1_mod = {}
function Expr1.property.len_of_1_mod:get()
  if self._m_len_of_1_mod ~= nil then
    return self._m_len_of_1_mod
  end

  self._m_len_of_1_mod = self.len_of_1 - 2
  return self._m_len_of_1_mod
end

Expr1.property.str1_len = {}
function Expr1.property.str1_len:get()
  if self._m_str1_len ~= nil then
    return self._m_str1_len
  end

  self._m_str1_len = string.len(self.str1)
  return self._m_str1_len
end


