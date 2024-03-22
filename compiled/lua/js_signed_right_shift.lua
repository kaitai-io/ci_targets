-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

JsSignedRightShift = class.class(KaitaiStruct)

function JsSignedRightShift:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function JsSignedRightShift:_read()
end

JsSignedRightShift.property.should_be_40000000 = {}
function JsSignedRightShift.property.should_be_40000000:get()
  if self._m_should_be_40000000 ~= nil then
    return self._m_should_be_40000000
  end

  self._m_should_be_40000000 = 2147483648 >> 1
  return self._m_should_be_40000000
end

JsSignedRightShift.property.should_be_a00000 = {}
function JsSignedRightShift.property.should_be_a00000:get()
  if self._m_should_be_a00000 ~= nil then
    return self._m_should_be_a00000
  end

  self._m_should_be_a00000 = 2684354560 >> 8
  return self._m_should_be_a00000
end


