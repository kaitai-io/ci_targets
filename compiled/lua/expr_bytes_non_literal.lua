-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprBytesNonLiteral = class.class(KaitaiStruct)

function ExprBytesNonLiteral:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprBytesNonLiteral:_read()
  self.one = self._io:read_u1()
  self.two = self._io:read_u1()
end

ExprBytesNonLiteral.property.calc_bytes = {}
function ExprBytesNonLiteral.property.calc_bytes:get()
  if self._m_calc_bytes ~= nil then
    return self._m_calc_bytes
  end

  self._m_calc_bytes = string.char(self.one, self.two)
  return self._m_calc_bytes
end


