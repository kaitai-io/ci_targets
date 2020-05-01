-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

IfValues = class.class(KaitaiStruct)

function IfValues:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IfValues:_read()
  self.codes = {}
  for i = 0, 3 - 1 do
    self.codes[i + 1] = IfValues.Code(self._io, self, self._root)
  end
end


IfValues.Code = class.class(KaitaiStruct)

function IfValues.Code:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IfValues.Code:_read()
  self.opcode = self._io:read_u1()
end

IfValues.Code.property.half_opcode = {}
function IfValues.Code.property.half_opcode:get()
  if self._m_half_opcode ~= nil then
    return self._m_half_opcode
  end

  if (self.opcode % 2) == 0 then
    self._m_half_opcode = math.floor(self.opcode / 2)
  end
  return self._m_half_opcode
end


