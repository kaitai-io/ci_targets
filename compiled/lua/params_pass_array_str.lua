-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ParamsPassArrayStr = class.class(KaitaiStruct)

function ParamsPassArrayStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassArrayStr:_read()
  self.str_array = {}
  for i = 1, 3 do
    self.str_array[i] = str_decode.decode(self._io:read_bytes(2), "ascii")
  end
  self.pass_str_array = ParamsPassArrayStr.WantsStrs(self.str_array, self._io, self, self._root)
  self.pass_str_array_calc = ParamsPassArrayStr.WantsStrs(self.str_array_calc, self._io, self, self._root)
end

ParamsPassArrayStr.property.str_array_calc = {}
function ParamsPassArrayStr.property.str_array_calc:get()
  if self._m_str_array_calc ~= nil then
    return self._m_str_array_calc
  end

  self._m_str_array_calc = {"aB", "Cd"}
  return self._m_str_array_calc
end


ParamsPassArrayStr.WantsStrs = class.class(KaitaiStruct)

function ParamsPassArrayStr.WantsStrs:_init(strs, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.strs = strs
  self:_read()
end

function ParamsPassArrayStr.WantsStrs:_read()
end


