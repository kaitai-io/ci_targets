// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "buffered_struct.h"

buffered_struct_t::buffered_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, buffered_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_block1 = 0;
    m__io__raw_block1 = 0;
    m_block2 = 0;
    m__io__raw_block2 = 0;

    try {
        _read();
    } catch(...) {
        this->~buffered_struct_t();
        throw;
    }
}

void buffered_struct_t::_read() {
    m_len1 = m__io->read_u4le();
    m__raw_block1 = m__io->read_bytes(len1());
    m__io__raw_block1 = new kaitai::kstream(m__raw_block1);
    m_block1 = new block_t(m__io__raw_block1, this, m__root);
    m_len2 = m__io->read_u4le();
    m__raw_block2 = m__io->read_bytes(len2());
    m__io__raw_block2 = new kaitai::kstream(m__raw_block2);
    m_block2 = new block_t(m__io__raw_block2, this, m__root);
    m_finisher = m__io->read_u4le();
}

buffered_struct_t::~buffered_struct_t() {
    if (m__io__raw_block1) delete m__io__raw_block1;
    if (m_block1) delete m_block1;
    if (m__io__raw_block2) delete m__io__raw_block2;
    if (m_block2) delete m_block2;
}

buffered_struct_t::block_t::block_t(kaitai::kstream* p__io, buffered_struct_t* p__parent, buffered_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~block_t();
        throw;
    }
}

void buffered_struct_t::block_t::_read() {
    m_number1 = m__io->read_u4le();
    m_number2 = m__io->read_u4le();
}

buffered_struct_t::block_t::~block_t() {
}
