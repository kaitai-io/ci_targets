-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local utils = require("utils")

CombineEnum = class.class(KaitaiStruct)

CombineEnum.Animal = enum.Enum {
  pig = 7,
  horse = 12,
}

function CombineEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CombineEnum:_read()
  self.enum_u4 = CombineEnum.Animal(self._io:read_u4le())
  self.enum_u2 = CombineEnum.Animal(self._io:read_u2le())
end

CombineEnum.property.enum_u4_u2 = {}
function CombineEnum.property.enum_u4_u2:get()
  if self._m_enum_u4_u2 ~= nil then
    return self._m_enum_u4_u2
  end

  self._m_enum_u4_u2 = utils.box_unwrap((false) and utils.box_wrap(self.enum_u4) or (self.enum_u2))
  return self._m_enum_u4_u2
end


