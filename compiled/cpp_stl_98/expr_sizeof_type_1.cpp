// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_sizeof_type_1.h"

exprSizeofType1_t::exprSizeofType1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprSizeofType1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_sizeof_block = false;
    f_sizeof_subblock = false;
    _read();
}

void exprSizeofType1_t::_read() {
}

exprSizeofType1_t::~exprSizeofType1_t() {
}

exprSizeofType1_t::block_t::block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprSizeofType1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_d = 0;
    _read();
}

void exprSizeofType1_t::block_t::_read() {
    m_a = m__io->read_u1();
    m_b = m__io->read_u4le();
    m_c = m__io->read_bytes(2);
    m_d = new subblock_t(m__io, this, m__root);
}

exprSizeofType1_t::block_t::~block_t() {
    delete m_d;
}

exprSizeofType1_t::block_t::subblock_t::subblock_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprSizeofType1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void exprSizeofType1_t::block_t::subblock_t::_read() {
    m_a = m__io->read_bytes(4);
}

exprSizeofType1_t::block_t::subblock_t::~subblock_t() {
}

int32_t exprSizeofType1_t::sizeof_block() {
    if (f_sizeof_block)
        return m_sizeof_block;
    m_sizeof_block = 11;
    f_sizeof_block = true;
    return m_sizeof_block;
}

int32_t exprSizeofType1_t::sizeof_subblock() {
    if (f_sizeof_subblock)
        return m_sizeof_subblock;
    m_sizeof_subblock = 4;
    f_sizeof_subblock = true;
    return m_sizeof_subblock;
}
