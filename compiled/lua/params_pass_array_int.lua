-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsPassArrayInt = class.class(KaitaiStruct)

function ParamsPassArrayInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassArrayInt:_read()
  self.ints = {}
  for i = 1, 3 do
    self.ints[i] = self._io:read_u2le()
  end
  self.pass_ints = ParamsPassArrayInt.WantsInts(self.ints, self._io, self, self._root)
  self.pass_ints_calc = ParamsPassArrayInt.WantsInts(self.ints_calc, self._io, self, self._root)
end

ParamsPassArrayInt.property.ints_calc = {}
function ParamsPassArrayInt.property.ints_calc:get()
  if self._m_ints_calc ~= nil then
    return self._m_ints_calc
  end

  self._m_ints_calc = {27643, 7}
  return self._m_ints_calc
end


ParamsPassArrayInt.WantsInts = class.class(KaitaiStruct)

function ParamsPassArrayInt.WantsInts:_init(nums, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.nums = nums
  self:_read()
end

function ParamsPassArrayInt.WantsInts:_read()
end


