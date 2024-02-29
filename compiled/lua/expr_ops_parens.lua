-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprOpsParens = class.class(KaitaiStruct)

function ExprOpsParens:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprOpsParens:_read()
end

ExprOpsParens.property.bool_and = {}
function ExprOpsParens.property.bool_and:get()
  if self._m_bool_and ~= nil then
    return self._m_bool_and
  end

  self._m_bool_and = ( ((false) and (true))  and 1 or 0)
  return self._m_bool_and
end

ExprOpsParens.property.bool_eq = {}
function ExprOpsParens.property.bool_eq:get()
  if self._m_bool_eq ~= nil then
    return self._m_bool_eq
  end

  self._m_bool_eq = (false == true and 1 or 0)
  return self._m_bool_eq
end

ExprOpsParens.property.bool_or = {}
function ExprOpsParens.property.bool_or:get()
  if self._m_bool_or ~= nil then
    return self._m_bool_or
  end

  self._m_bool_or = ( ((not(false)) or (false))  and 1 or 0)
  return self._m_bool_or
end

ExprOpsParens.property.f_2pi = {}
function ExprOpsParens.property.f_2pi:get()
  if self._m_f_2pi ~= nil then
    return self._m_f_2pi
  end

  self._m_f_2pi = 6.28
  return self._m_f_2pi
end

ExprOpsParens.property.f_e = {}
function ExprOpsParens.property.f_e:get()
  if self._m_f_e ~= nil then
    return self._m_f_e
  end

  self._m_f_e = 2.72
  return self._m_f_e
end

ExprOpsParens.property.f_sum_to_int = {}
function ExprOpsParens.property.f_sum_to_int:get()
  if self._m_f_sum_to_int ~= nil then
    return self._m_f_sum_to_int
  end

  self._m_f_sum_to_int = ((self.f_2pi + self.f_e) > 0) and math.floor((self.f_2pi + self.f_e)) or math.ceil((self.f_2pi + self.f_e))
  return self._m_f_sum_to_int
end

ExprOpsParens.property.i_42 = {}
function ExprOpsParens.property.i_42:get()
  if self._m_i_42 ~= nil then
    return self._m_i_42
  end

  self._m_i_42 = 42
  return self._m_i_42
end

ExprOpsParens.property.i_m13 = {}
function ExprOpsParens.property.i_m13:get()
  if self._m_i_m13 ~= nil then
    return self._m_i_m13
  end

  self._m_i_m13 = -13
  return self._m_i_m13
end

ExprOpsParens.property.i_sum_to_str = {}
function ExprOpsParens.property.i_sum_to_str:get()
  if self._m_i_sum_to_str ~= nil then
    return self._m_i_sum_to_str
  end

  self._m_i_sum_to_str = tostring((self.i_42 + self.i_m13))
  return self._m_i_sum_to_str
end

ExprOpsParens.property.str_0_to_4 = {}
function ExprOpsParens.property.str_0_to_4:get()
  if self._m_str_0_to_4 ~= nil then
    return self._m_str_0_to_4
  end

  self._m_str_0_to_4 = "01234"
  return self._m_str_0_to_4
end

ExprOpsParens.property.str_5_to_9 = {}
function ExprOpsParens.property.str_5_to_9:get()
  if self._m_str_5_to_9 ~= nil then
    return self._m_str_5_to_9
  end

  self._m_str_5_to_9 = "56789"
  return self._m_str_5_to_9
end

ExprOpsParens.property.str_concat_len = {}
function ExprOpsParens.property.str_concat_len:get()
  if self._m_str_concat_len ~= nil then
    return self._m_str_concat_len
  end

  self._m_str_concat_len = string.len(self.str_0_to_4 .. self.str_5_to_9)
  return self._m_str_concat_len
end

ExprOpsParens.property.str_concat_rev = {}
function ExprOpsParens.property.str_concat_rev:get()
  if self._m_str_concat_rev ~= nil then
    return self._m_str_concat_rev
  end

  self._m_str_concat_rev = string.reverse(self.str_0_to_4 .. self.str_5_to_9)
  return self._m_str_concat_rev
end

ExprOpsParens.property.str_concat_substr_2_to_7 = {}
function ExprOpsParens.property.str_concat_substr_2_to_7:get()
  if self._m_str_concat_substr_2_to_7 ~= nil then
    return self._m_str_concat_substr_2_to_7
  end

  self._m_str_concat_substr_2_to_7 = string.sub(self.str_0_to_4 .. self.str_5_to_9, 2 + 1, 7)
  return self._m_str_concat_substr_2_to_7
end

ExprOpsParens.property.str_concat_to_i = {}
function ExprOpsParens.property.str_concat_to_i:get()
  if self._m_str_concat_to_i ~= nil then
    return self._m_str_concat_to_i
  end

  self._m_str_concat_to_i = tonumber(self.str_0_to_4 .. self.str_5_to_9)
  return self._m_str_concat_to_i
end


