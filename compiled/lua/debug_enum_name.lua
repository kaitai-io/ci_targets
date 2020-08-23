-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

DebugEnumName = class.class(KaitaiStruct)

DebugEnumName.TestEnum1 = enum.Enum {
  enum_value_80 = 80,
}

DebugEnumName.TestEnum2 = enum.Enum {
  enum_value_65 = 65,
}

function DebugEnumName:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugEnumName:_read()
  self.one = DebugEnumName.TestEnum1(self._io:read_u1())
  self.array_of_ints = {}
  for i = 0, 1 - 1 do
    self.array_of_ints[i + 1] = DebugEnumName.TestEnum2(self._io:read_u1())
  end
  self.test_type = DebugEnumName.TestSubtype(self._io, self, self._root)
  self.test_type:_read()
end


DebugEnumName.TestSubtype = class.class(KaitaiStruct)

DebugEnumName.TestSubtype.InnerEnum1 = enum.Enum {
  enum_value_67 = 67,
}

DebugEnumName.TestSubtype.InnerEnum2 = enum.Enum {
  enum_value_11 = 11,
}

function DebugEnumName.TestSubtype:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugEnumName.TestSubtype:_read()
  self.field1 = DebugEnumName.TestSubtype.InnerEnum1(self._io:read_u1())
  self.field2 = self._io:read_u1()
end

DebugEnumName.TestSubtype.property.instance_field = {}
function DebugEnumName.TestSubtype.property.instance_field:get()
  if self._m_instance_field ~= nil then
    return self._m_instance_field
  end

  self._m_instance_field = DebugEnumName.TestSubtype.InnerEnum2((self.field2 & 15))
  return self._m_instance_field
end


