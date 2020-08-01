// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_repeat_usertype.h"

process_repeat_usertype_t::process_repeat_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_blocks = 0;
    m__raw_blocks = 0;
    m__io__raw_blocks = 0;
    m__raw__raw_blocks = 0;

    try {
        _read();
    } catch(...) {
        // this->~process_repeat_usertype_t();
        throw;
    }
}

void process_repeat_usertype_t::_read() {
    int l_blocks = 2;
    m__raw_blocks = new std::vector<std::string>();
    m__raw_blocks->reserve(l_blocks);
    m__io__raw_blocks = new std::vector<kaitai::kstream*>();
    m__io__raw_blocks->reserve(l_blocks);
    m__raw__raw_blocks = new std::vector<std::string>();
    m__raw__raw_blocks->reserve(l_blocks);
    m_blocks = new std::vector<block_t*>();
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m__raw__raw_blocks->push_back(m__io->read_bytes(5));
        m__raw_blocks->push_back(kaitai::kstream::process_xor_one(m__raw__raw_blocks->at(m__raw__raw_blocks->size() - 1), 158));
        kaitai::kstream* io__raw_blocks = new kaitai::kstream(m__raw_blocks->at(m__raw_blocks->size() - 1));
        m__io__raw_blocks->push_back(io__raw_blocks);
        m_blocks->push_back(new block_t(io__raw_blocks, this, m__root));
    }
}

process_repeat_usertype_t::~process_repeat_usertype_t() {
    if (m__raw_blocks) {
        delete m__raw_blocks; m__raw_blocks = 0;
    }
    if (m__io__raw_blocks) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_blocks->begin(); it != m__io__raw_blocks->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_blocks; m__io__raw_blocks = 0;
    }
    if (m__raw__raw_blocks) {
        delete m__raw__raw_blocks; m__raw__raw_blocks = 0;
    }
    if (m_blocks) {
        for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
            delete *it;
        }
        delete m_blocks; m_blocks = 0;
    }
}

process_repeat_usertype_t::block_t::block_t(kaitai::kstream* p__io, process_repeat_usertype_t* p__parent, process_repeat_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        // this->~block_t();
        throw;
    }
}

void process_repeat_usertype_t::block_t::_read() {
    m_a = m__io->read_s4le();
    m_b = m__io->read_s1();
}

process_repeat_usertype_t::block_t::~block_t() {
}
