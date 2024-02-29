-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

Expr0 = class.class(KaitaiStruct)

function Expr0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr0:_read()
  self.len_of_1 = self._io:read_u2le()
end

Expr0.property.must_be_abc123 = {}
function Expr0.property.must_be_abc123:get()
  if self._m_must_be_abc123 ~= nil then
    return self._m_must_be_abc123
  end

  self._m_must_be_abc123 = "abc" .. "123"
  return self._m_must_be_abc123
end

Expr0.property.must_be_f7 = {}
function Expr0.property.must_be_f7:get()
  if self._m_must_be_f7 ~= nil then
    return self._m_must_be_f7
  end

  self._m_must_be_f7 = (7 + 240)
  return self._m_must_be_f7
end


