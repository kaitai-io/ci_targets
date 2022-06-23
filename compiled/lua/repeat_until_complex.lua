-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatUntilComplex = class.class(KaitaiStruct)

function RepeatUntilComplex:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilComplex:_read()
  self.first = {}
  local i = 0
  while true do
    local _ = RepeatUntilComplex.TypeU1(self._io, self, self._root)
    self.first[i + 1] = _
    if _.count == 0 then
      break
    end
    i = i + 1
  end
  self.second = {}
  local i = 0
  while true do
    local _ = RepeatUntilComplex.TypeU2(self._io, self, self._root)
    self.second[i + 1] = _
    if _.count == 0 then
      break
    end
    i = i + 1
  end
  self.third = {}
  local i = 0
  while true do
    local _ = self._io:read_u1()
    self.third[i + 1] = _
    if _ == 0 then
      break
    end
    i = i + 1
  end
end


RepeatUntilComplex.TypeU1 = class.class(KaitaiStruct)

function RepeatUntilComplex.TypeU1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilComplex.TypeU1:_read()
  self.count = self._io:read_u1()
  self.values = {}
  for i = 0, self.count - 1 do
    self.values[i + 1] = self._io:read_u1()
  end
end


RepeatUntilComplex.TypeU2 = class.class(KaitaiStruct)

function RepeatUntilComplex.TypeU2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilComplex.TypeU2:_read()
  self.count = self._io:read_u2le()
  self.values = {}
  for i = 0, self.count - 1 do
    self.values[i + 1] = self._io:read_u2le()
  end
end


