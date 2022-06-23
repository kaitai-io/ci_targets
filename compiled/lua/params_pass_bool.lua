-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

ParamsPassBool = class.class(KaitaiStruct)

function ParamsPassBool:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassBool:_read()
  self.s_false = self._io:read_bits_int_be(1) ~= 0
  self.s_true = self._io:read_bits_int_be(1) ~= 0
  self._io:align_to_byte()
  self.seq_b1 = ParamsPassBool.ParamTypeB1(self.s_true, self._io, self, self._root)
  self.seq_bool = ParamsPassBool.ParamTypeBool(self.s_false, self._io, self, self._root)
  self.literal_b1 = ParamsPassBool.ParamTypeB1(false, self._io, self, self._root)
  self.literal_bool = ParamsPassBool.ParamTypeBool(true, self._io, self, self._root)
  self.inst_b1 = ParamsPassBool.ParamTypeB1(self.v_true, self._io, self, self._root)
  self.inst_bool = ParamsPassBool.ParamTypeBool(self.v_false, self._io, self, self._root)
end

ParamsPassBool.property.v_false = {}
function ParamsPassBool.property.v_false:get()
  if self._m_v_false ~= nil then
    return self._m_v_false
  end

  self._m_v_false = false
  return self._m_v_false
end

ParamsPassBool.property.v_true = {}
function ParamsPassBool.property.v_true:get()
  if self._m_v_true ~= nil then
    return self._m_v_true
  end

  self._m_v_true = true
  return self._m_v_true
end


ParamsPassBool.ParamTypeB1 = class.class(KaitaiStruct)

function ParamsPassBool.ParamTypeB1:_init(arg, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.arg = arg
  self:_read()
end

function ParamsPassBool.ParamTypeB1:_read()
  self.foo = self._io:read_bytes(utils.box_unwrap((self.arg) and utils.box_wrap(1) or (2)))
end


ParamsPassBool.ParamTypeBool = class.class(KaitaiStruct)

function ParamsPassBool.ParamTypeBool:_init(arg, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.arg = arg
  self:_read()
end

function ParamsPassBool.ParamTypeBool:_read()
  self.foo = self._io:read_bytes(utils.box_unwrap((self.arg) and utils.box_wrap(1) or (2)))
end


