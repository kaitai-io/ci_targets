// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_sizeof_type_0.h"

expr_sizeof_type_0_t::expr_sizeof_type_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_type_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_sizeof_block = false;
    _read();
}

void expr_sizeof_type_0_t::_read() {
}

expr_sizeof_type_0_t::~expr_sizeof_type_0_t() {
}

expr_sizeof_type_0_t::block_t::block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_type_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void expr_sizeof_type_0_t::block_t::_read() {
    m_a = m__io->read_u1();
    m_b = m__io->read_u4le();
    m_c = m__io->read_bytes(2);
}

expr_sizeof_type_0_t::block_t::~block_t() {
}

int32_t expr_sizeof_type_0_t::sizeof_block() {
    if (f_sizeof_block)
        return m_sizeof_block;
    m_sizeof_block = 7;
    f_sizeof_block = true;
    return m_sizeof_block;
}
