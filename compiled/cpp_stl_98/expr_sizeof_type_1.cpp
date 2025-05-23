// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_sizeof_type_1.h"

expr_sizeof_type_1_t::expr_sizeof_type_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_type_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_sizeof_block = false;
    f_sizeof_subblock = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_sizeof_type_1_t::_read() {
}

expr_sizeof_type_1_t::~expr_sizeof_type_1_t() {
    _clean_up();
}

void expr_sizeof_type_1_t::_clean_up() {
}

expr_sizeof_type_1_t::block_t::block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_sizeof_type_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_d = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_sizeof_type_1_t::block_t::_read() {
    m_a = m__io->read_u1();
    m_b = m__io->read_u4le();
    m_c = m__io->read_bytes(2);
    m_d = new subblock_t(m__io, this, m__root);
}

expr_sizeof_type_1_t::block_t::~block_t() {
    _clean_up();
}

void expr_sizeof_type_1_t::block_t::_clean_up() {
    if (m_d) {
        delete m_d; m_d = 0;
    }
}

expr_sizeof_type_1_t::block_t::subblock_t::subblock_t(kaitai::kstream* p__io, expr_sizeof_type_1_t::block_t* p__parent, expr_sizeof_type_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_sizeof_type_1_t::block_t::subblock_t::_read() {
    m_a = m__io->read_bytes(4);
}

expr_sizeof_type_1_t::block_t::subblock_t::~subblock_t() {
    _clean_up();
}

void expr_sizeof_type_1_t::block_t::subblock_t::_clean_up() {
}

int32_t expr_sizeof_type_1_t::sizeof_block() {
    if (f_sizeof_block)
        return m_sizeof_block;
    f_sizeof_block = true;
    m_sizeof_block = 11;
    return m_sizeof_block;
}

int32_t expr_sizeof_type_1_t::sizeof_subblock() {
    if (f_sizeof_subblock)
        return m_sizeof_subblock;
    f_sizeof_subblock = true;
    m_sizeof_subblock = 4;
    return m_sizeof_subblock;
}
