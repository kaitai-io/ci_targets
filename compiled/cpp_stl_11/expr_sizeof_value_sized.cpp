// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_sizeof_value_sized.h"

expr_sizeof_value_sized_t::expr_sizeof_value_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_value_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_block1 = nullptr;
    m__io__raw_block1 = nullptr;
    f_self_sizeof = false;
    f_sizeof_block = false;
    f_sizeof_block_a = false;
    f_sizeof_block_b = false;
    f_sizeof_block_c = false;
    _read();
}

void expr_sizeof_value_sized_t::_read() {
    m__raw_block1 = m__io->read_bytes(12);
    m__io__raw_block1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_block1));
    m_block1 = std::unique_ptr<block_t>(new block_t(m__io__raw_block1.get(), this, m__root));
    m_more = m__io->read_u2le();
}

expr_sizeof_value_sized_t::~expr_sizeof_value_sized_t() {
    _clean_up();
}

void expr_sizeof_value_sized_t::_clean_up() {
}

expr_sizeof_value_sized_t::block_t::block_t(kaitai::kstream* p__io, expr_sizeof_value_sized_t* p__parent, expr_sizeof_value_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
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
    f_self_sizeof = true;
    m_self_sizeof = 14;
    return m_self_sizeof;
}

int32_t expr_sizeof_value_sized_t::sizeof_block() {
    if (f_sizeof_block)
        return m_sizeof_block;
    f_sizeof_block = true;
    m_sizeof_block = 12;
    return m_sizeof_block;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_a() {
    if (f_sizeof_block_a)
        return m_sizeof_block_a;
    f_sizeof_block_a = true;
    m_sizeof_block_a = 1;
    return m_sizeof_block_a;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_b() {
    if (f_sizeof_block_b)
        return m_sizeof_block_b;
    f_sizeof_block_b = true;
    m_sizeof_block_b = 4;
    return m_sizeof_block_b;
}

int32_t expr_sizeof_value_sized_t::sizeof_block_c() {
    if (f_sizeof_block_c)
        return m_sizeof_block_c;
    f_sizeof_block_c = true;
    m_sizeof_block_c = 2;
    return m_sizeof_block_c;
}
