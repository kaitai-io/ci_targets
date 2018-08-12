-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

ParamsEnum = class.class(KaitaiStruct)

ParamsEnum.Animal = enum.Enum {
  cat = 1,
  dog = 2,
}

function ParamsEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsEnum:_read()
  self.one = ParamsEnum.Animal(self._io:read_u1())
  self.invoke_with_param = ParamsEnum.WithParam(self.one, self._io, self, self._root)
end


ParamsEnum.WithParam = class.class(KaitaiStruct)

function ParamsEnum.WithParam:_init(enumerated_one, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.enumerated_one = enumerated_one
  self:_read()
end

function ParamsEnum.WithParam:_read()
end

ParamsEnum.WithParam.property.is_cat = {}
function ParamsEnum.WithParam.property.is_cat:get()
  if self._m_is_cat ~= nil then
    return self._m_is_cat
  end

  self._m_is_cat = self.enumerated_one == ParamsEnum.Animal.cat
  return self._m_is_cat
end


