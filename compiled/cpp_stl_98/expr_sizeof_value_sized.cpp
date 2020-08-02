// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_sizeof_value_sized.h"

expr_sizeof_value_sized_t::expr_sizeof_value_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_value_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_block1 = 0;
    m__io__raw_block1 = 0;
    f_self_sizeof = false;
    f_sizeof_block = false;
    f_sizeof_block_b = false;
    f_sizeof_block_a = false;
    f_sizeof_block_c = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_sizeof_value_sized_t::_read() {
    m__raw_block1 = m__io->read_bytes(12);
    m__io__raw_block1 = new kaitai::kstream(m__raw_block1);
    m_block1 = new block_t(m__io__raw_block1, this, m__root);
    m_more = m__io->read_u2le();
}

expr_sizeof_value_sized_t::~expr_sizeof_value_sized_t() {
    _clean_up();
}

void expr_sizeof_value_sized_t::_clean_up() {
    if (m__io__raw_block1) {
        delete m__io__raw_block1; m__io__raw_block1 = 0;
    }
    if (m_block1) {
        delete m_block1; m_block1 = 0;
    }
}

expr_sizeof_value_sized_t::block_t::block_t(kaitai::kstream* p__io, expr_sizeof_value_sized_t* p__parent, expr_sizeof_value_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_sizeof_value_sized_t::block_t::_read() {
    m_a = m__io->read_u1();
    m_b = m__io->read_u4le();
    m_c = m__io->read_bytes(2);
}

expr_sizeof_value_sized_t::block_t::~block_t() {
    _clean_up();
}

void expr_sizeof_value_sized_t::block_t::_clean_up() {
}

int32_t expr_sizeof_value_sized_t::self_sizeof() {
    if (f_self_sizeof)
        return m_self_sizeof;
    m_self_sizeof = 14;
    f_self_sizeof = true;
    return m_self_sizeof;
}

int32_t expr_sizeof_value_sized_t::sizeof_block() {
    if (f_sizeof_block)
        return m_sizeof_block;
    m_sizeof_block = 12;
    f_sizeof_block = true;
    return m_sizeof_block;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_b() {
    if (f_sizeof_block_b)
        return m_sizeof_block_b;
    m_sizeof_block_b = 4;
    f_sizeof_block_b = true;
    return m_sizeof_block_b;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_a() {
    if (f_sizeof_block_a)
        return m_sizeof_block_a;
    m_sizeof_block_a = 1;
    f_sizeof_block_a = true;
    return m_sizeof_block_a;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_c() {
    if (f_sizeof_block_c)
        return m_sizeof_block_c;
    m_sizeof_block_c = 2;
    f_sizeof_block_c = true;
    return m_sizeof_block_c;
}
