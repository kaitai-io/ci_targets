-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")
local utils = require("utils")

NavParentVsValueInst = class.class(KaitaiStruct)

function NavParentVsValueInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentVsValueInst:_read()
  self.s1 = str_decode.decode(self._io:read_bytes_term(124, false, true, true), "UTF-8")
  self.child = NavParentVsValueInst.ChildObj(self._io, self, self._root)
end


NavParentVsValueInst.ChildObj = class.class(KaitaiStruct)

function NavParentVsValueInst.ChildObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function NavParentVsValueInst.ChildObj:_read()
end

NavParentVsValueInst.ChildObj.property.do_something = {}
function NavParentVsValueInst.ChildObj.property.do_something:get()
  if self._m_do_something ~= nil then
    return self._m_do_something
  end

  self._m_do_something = utils.box_unwrap((self._parent.s1 == "foo") and utils.box_wrap(true) or (false))
  return self._m_do_something
end


