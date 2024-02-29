-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

TypeTernary2ndFalsy = class.class(KaitaiStruct)

function TypeTernary2ndFalsy:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeTernary2ndFalsy:_read()
  self.int_truthy = self._io:read_u1()
  self.ut = TypeTernary2ndFalsy.Foo(self._io, self, self._root)
  self.int_array = {}
  for i = 0, 2 - 1 do
    self.int_array[i + 1] = self._io:read_u1()
  end
  self.int_array_empty = {}
  for i = 0, 0 - 1 do
    self.int_array_empty[i + 1] = self._io:read_u1()
  end
end

TypeTernary2ndFalsy.property.null_ut = {}
function TypeTernary2ndFalsy.property.null_ut:get()
  if self._m_null_ut ~= nil then
    return self._m_null_ut
  end

  if false then
    self._m_null_ut = self.ut
  end
  return self._m_null_ut
end

TypeTernary2ndFalsy.property.t = {}
function TypeTernary2ndFalsy.property.t:get()
  if self._m_t ~= nil then
    return self._m_t
  end

  self._m_t = true
  return self._m_t
end

TypeTernary2ndFalsy.property.v_false = {}
function TypeTernary2ndFalsy.property.v_false:get()
  if self._m_v_false ~= nil then
    return self._m_v_false
  end

  self._m_v_false = utils.box_unwrap((self.t) and utils.box_wrap(false) or (true))
  return self._m_v_false
end

TypeTernary2ndFalsy.property.v_float_neg_zero = {}
function TypeTernary2ndFalsy.property.v_float_neg_zero:get()
  if self._m_v_float_neg_zero ~= nil then
    return self._m_v_float_neg_zero
  end

  self._m_v_float_neg_zero = utils.box_unwrap((self.t) and utils.box_wrap(-0.0) or (-2.72))
  return self._m_v_float_neg_zero
end

TypeTernary2ndFalsy.property.v_float_zero = {}
function TypeTernary2ndFalsy.property.v_float_zero:get()
  if self._m_v_float_zero ~= nil then
    return self._m_v_float_zero
  end

  self._m_v_float_zero = utils.box_unwrap((self.t) and utils.box_wrap(0.0) or (3.14))
  return self._m_v_float_zero
end

TypeTernary2ndFalsy.property.v_int_array_empty = {}
function TypeTernary2ndFalsy.property.v_int_array_empty:get()
  if self._m_v_int_array_empty ~= nil then
    return self._m_v_int_array_empty
  end

  self._m_v_int_array_empty = utils.box_unwrap((self.t) and utils.box_wrap(self.int_array_empty) or (self.int_array))
  return self._m_v_int_array_empty
end

TypeTernary2ndFalsy.property.v_int_neg_zero = {}
function TypeTernary2ndFalsy.property.v_int_neg_zero:get()
  if self._m_v_int_neg_zero ~= nil then
    return self._m_v_int_neg_zero
  end

  self._m_v_int_neg_zero = utils.box_unwrap((self.t) and utils.box_wrap(0) or (-20))
  return self._m_v_int_neg_zero
end

TypeTernary2ndFalsy.property.v_int_zero = {}
function TypeTernary2ndFalsy.property.v_int_zero:get()
  if self._m_v_int_zero ~= nil then
    return self._m_v_int_zero
  end

  self._m_v_int_zero = utils.box_unwrap((self.t) and utils.box_wrap(0) or (10))
  return self._m_v_int_zero
end

TypeTernary2ndFalsy.property.v_null_ut = {}
function TypeTernary2ndFalsy.property.v_null_ut:get()
  if self._m_v_null_ut ~= nil then
    return self._m_v_null_ut
  end

  self._m_v_null_ut = utils.box_unwrap((self.t) and utils.box_wrap(self.null_ut) or (self.ut))
  return self._m_v_null_ut
end

TypeTernary2ndFalsy.property.v_str_empty = {}
function TypeTernary2ndFalsy.property.v_str_empty:get()
  if self._m_v_str_empty ~= nil then
    return self._m_v_str_empty
  end

  self._m_v_str_empty = utils.box_unwrap((self.t) and utils.box_wrap("") or ("kaitai"))
  return self._m_v_str_empty
end

TypeTernary2ndFalsy.property.v_str_w_zero = {}
function TypeTernary2ndFalsy.property.v_str_w_zero:get()
  if self._m_v_str_w_zero ~= nil then
    return self._m_v_str_w_zero
  end

  self._m_v_str_w_zero = utils.box_unwrap((self.t) and utils.box_wrap("0") or ("30"))
  return self._m_v_str_w_zero
end


TypeTernary2ndFalsy.Foo = class.class(KaitaiStruct)

function TypeTernary2ndFalsy.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeTernary2ndFalsy.Foo:_read()
  self.m = self._io:read_u1()
end


