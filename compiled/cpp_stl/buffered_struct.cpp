// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "buffered_struct.h"



buffered_struct_t::buffered_struct_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, buffered_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
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
    delete m__io__raw_block1;
    delete m_block1;
    delete m__io__raw_block2;
    delete m_block2;
}

buffered_struct_t::block_t::block_t(kaitai::kstream *p_io, buffered_struct_t* p_parent, buffered_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_number1 = m__io->read_u4le();
    m_number2 = m__io->read_u4le();
}

buffered_struct_t::block_t::~block_t() {
}
