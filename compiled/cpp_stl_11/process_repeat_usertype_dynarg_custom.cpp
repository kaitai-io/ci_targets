// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_repeat_usertype_dynarg_custom.h"
#include "my_custom_fx.h"

process_repeat_usertype_dynarg_custom_t::process_repeat_usertype_dynarg_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_usertype_dynarg_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_blocks = nullptr;
    m__raw_blocks = nullptr;
    m__io__raw_blocks = nullptr;
    m__raw__raw_blocks = nullptr;
    m_blocks_b = nullptr;
    _read();
}

void process_repeat_usertype_dynarg_custom_t::_read() {
    m__raw_blocks = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m__io__raw_blocks = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>>(new std::vector<std::unique_ptr<kaitai::kstream>>());
    m__raw__raw_blocks = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_blocks = std::unique_ptr<std::vector<std::unique_ptr<block_t>>>(new std::vector<std::unique_ptr<block_t>>());
    const int l_blocks = 2;
    for (int i = 0; i < l_blocks; i++) {
        m__raw__raw_blocks->push_back(std::move(m__io->read_bytes(5)));
        my_custom_fx_t _process__raw__raw_blocks(_io()->pos() + 13 * i, kaitai::kstream::mod(_io()->pos(), 2) == 0, ((i == 1) ? (std::string("\x20\x30", 2)) : (std::string("\x40", 1))));
        m__raw_blocks->push_back(std::move(_process__raw__raw_blocks.decode(m__raw__raw_blocks->at(m__raw__raw_blocks->size() - 1))));
        kaitai::kstream* io__raw_blocks = new kaitai::kstream(m__raw_blocks->at(m__raw_blocks->size() - 1));
        m__io__raw_blocks->emplace_back(io__raw_blocks);
        m_blocks->push_back(std::move(std::unique_ptr<block_t>(new block_t(io__raw_blocks, this, m__root))));
    }
    m_blocks_b = std::unique_ptr<blocks_b_wrapper_t>(new blocks_b_wrapper_t(m__io, this, m__root));
}

process_repeat_usertype_dynarg_custom_t::~process_repeat_usertype_dynarg_custom_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_custom_t::_clean_up() {
}

process_repeat_usertype_dynarg_custom_t::block_t::block_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_custom_t* p__parent, process_repeat_usertype_dynarg_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void process_repeat_usertype_dynarg_custom_t::block_t::_read() {
    m_a = m__io->read_u4le();
}

process_repeat_usertype_dynarg_custom_t::block_t::~block_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_custom_t::block_t::_clean_up() {
}

process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::blocks_b_wrapper_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_custom_t* p__parent, process_repeat_usertype_dynarg_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_blocks_0_b = false;
    f_blocks_1_b = false;
    _read();
}

void process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::_read() {
    m_dummy = m__io->read_u1();
}

process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::~blocks_b_wrapper_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::_clean_up() {
    if (f_blocks_0_b) {
    }
    if (f_blocks_1_b) {
    }
}

uint8_t process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::blocks_0_b() {
    if (f_blocks_0_b)
        return m_blocks_0_b;
    f_blocks_0_b = true;
    kaitai::kstream *io = _parent()->blocks()->at(0)->_io();
    std::streampos _pos = io->pos();
    io->seek(4);
    m_blocks_0_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_0_b;
}

uint8_t process_repeat_usertype_dynarg_custom_t::blocks_b_wrapper_t::blocks_1_b() {
    if (f_blocks_1_b)
        return m_blocks_1_b;
    f_blocks_1_b = true;
    kaitai::kstream *io = _parent()->blocks()->at(1)->_io();
    std::streampos _pos = io->pos();
    io->seek(4);
    m_blocks_1_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_1_b;
}
