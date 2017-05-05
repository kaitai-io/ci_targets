// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "type_int_unary_op.h"



type_int_unary_op_t::type_int_unary_op_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, type_int_unary_op_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_unary_s2 = false;
    f_unary_s8 = false;
    m_value_s2 = m__io->read_s2le();
    m_value_s8 = m__io->read_s8le();
}

type_int_unary_op_t::~type_int_unary_op_t() {
}

int32_t type_int_unary_op_t::unary_s2() {
    if (f_unary_s2)
        return m_unary_s2;
    m_unary_s2 = -value_s2();
    f_unary_s2 = true;
    return m_unary_s2;
}

int64_t type_int_unary_op_t::unary_s8() {
    if (f_unary_s8)
        return m_unary_s8;
    m_unary_s8 = -value_s8();
    f_unary_s8 = true;
    return m_unary_s8;
}
