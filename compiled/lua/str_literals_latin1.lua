-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrLiteralsLatin1 = class.class(KaitaiStruct)

function StrLiteralsLatin1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrLiteralsLatin1:_read()
  self.len_parsed = self._io:read_u2le()
  self.parsed = str_decode.decode(self._io:read_bytes(self.len_parsed), "UTF-8")
end

StrLiteralsLatin1.property.parsed_eq_literal = {}
function StrLiteralsLatin1.property.parsed_eq_literal:get()
  if self._m_parsed_eq_literal ~= nil then
    return self._m_parsed_eq_literal
  end

  self._m_parsed_eq_literal = self.parsed == "\243"
  return self._m_parsed_eq_literal
end


