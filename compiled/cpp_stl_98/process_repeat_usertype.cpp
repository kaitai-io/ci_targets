// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_repeat_usertype.h"

processRepeatUsertype_t::processRepeatUsertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processRepeatUsertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_blocks = 0;
    m__raw_blocks = 0;
    m__io__raw_blocks = 0;
    m__raw__raw_blocks = 0;
    _read();
}

void processRepeatUsertype_t::_read() {
    int l_blocks = 2;
    m__raw_blocks = new std::vector<std::string>();
    m__raw_blocks->reserve(l_blocks);
    m__io__raw_blocks = new std::vector<kaitai::kstream*>();
    m__io__raw_blocks->reserve(l_blocks);
    m_blocks = new std::vector<block_t*>();
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m__raw__raw_blocks->push_back(m__io->read_bytes(5));
        m__raw_blocks = kaitai::kstream::process_xor_one(m__raw__raw_blocks, 158);
        kaitai::kstream* io__raw_blocks = new kaitai::kstream(m__raw_blocks->at(m__raw_blocks->size() - 1));
        m__io__raw_blocks->push_back(io__raw_blocks);
        m_blocks->push_back(new block_t(io__raw_blocks, this, m__root));
    }
}

processRepeatUsertype_t::~processRepeatUsertype_t() {
    delete m__raw_blocks;
    for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_blocks->begin(); it != m__io__raw_blocks->end(); ++it) {
        delete *it;
    }
    delete m__io__raw_blocks;
    for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
        delete *it;
    }
    delete m_blocks;
}

processRepeatUsertype_t::block_t::block_t(kaitai::kstream* p__io, processRepeatUsertype_t* p__parent, processRepeatUsertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void processRepeatUsertype_t::block_t::_read() {
    m_a = m__io->read_s4le();
    m_b = m__io->read_s1();
}

processRepeatUsertype_t::block_t::~block_t() {
}
