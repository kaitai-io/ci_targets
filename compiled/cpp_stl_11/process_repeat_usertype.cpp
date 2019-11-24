// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_repeat_usertype.h"

#include <memory>

process_repeat_usertype_t::process_repeat_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_blocks = nullptr;
    m__raw_blocks = nullptr;
    m__io__raw_blocks = nullptr;
    m__raw__raw_blocks = nullptr;
    _read();
}

void process_repeat_usertype_t::_read() {
    int l_blocks = 2;
    m__raw_blocks = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m__raw_blocks->reserve(l_blocks);
    m__io__raw_blocks = std::unique_ptr<std::vector<kaitai::kstream*>>(new std::vector<kaitai::kstream*>());
    m__io__raw_blocks->reserve(l_blocks);
    m_blocks = std::unique_ptr<std::vector<std::unique_ptr<block_t>>>(new std::vector<std::unique_ptr<block_t>>());
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m__raw__raw_blocks->push_back(std::move(m__io->read_bytes(5)));
        m__raw_blocks = kaitai::kstream::process_xor_one(m__raw__raw_blocks, 158);
        kaitai::kstream* io__raw_blocks = new kaitai::kstream(m__raw_blocks->at(m__raw_blocks->size() - 1));
        m__io__raw_blocks->push_back(io__raw_blocks);
        m_blocks->push_back(std::move(std::unique_ptr<block_t>(new block_t(io__raw_blocks, this, m__root))));
    }
}

process_repeat_usertype_t::~process_repeat_usertype_t() {
}

process_repeat_usertype_t::block_t::block_t(kaitai::kstream* p__io, process_repeat_usertype_t* p__parent, process_repeat_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void process_repeat_usertype_t::block_t::_read() {
    m_a = m__io->read_s4le();
    m_b = m__io->read_s1();
}

process_repeat_usertype_t::block_t::~block_t() {
}
