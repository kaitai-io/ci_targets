// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_repeat_usertype_dynarg_custom.h"
#include "my_custom_fx.h"

process_repeat_usertype_dynarg_custom_t::process_repeat_usertype_dynarg_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_usertype_dynarg_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_blocks = 0;
    m__raw_blocks = 0;
    m__io__raw_blocks = 0;
    m__raw__raw_blocks = 0;
    m_blocks_b = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void process_repeat_usertype_dynarg_custom_t::_read() {
    m__raw_blocks = new std::vector<std::string>();
    m__io__raw_blocks = new std::vector<kaitai::kstream*>();
    m__raw__raw_blocks = new std::vector<std::string>();
    m_blocks = new std::vector<block_t*>();
    const int l_blocks = 2;
    for (int i = 0; i < l_blocks; i++) {
        m__raw__raw_blocks->push_back(m__io->read_bytes(5));
        my_custom_fx_t _process__raw__raw_blocks(_io()->pos() + 13 * i, kaitai::kstream::mod(_io()->pos(), 2) == 0, ((i == 1) ? (std::string("\x20\x30", 2)) : (std::string("\x40", 1))));
        m__raw_blocks->push_back(_process__raw__raw_blocks.decode(m__raw__raw_blocks->at(m__raw__raw_blocks->size() - 1)));
        kaitai::kstream* io__raw_blocks = new kaitai::kstream(m__raw_blocks->at(m__raw_blocks->size() - 1));
        m__io__raw_blocks->push_back(io__raw_blocks);
        m_blocks->push_back(new block_t(io__raw_blocks, this, m__root));
    }
    m_blocks_b = new blocks_b_wrapper_t(m__io, this, m__root);
}

process_repeat_usertype_dynarg_custom_t::~process_repeat_usertype_dynarg_custom_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_custom_t::_clean_up() {
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
    if (m_blocks_b) {
        delete m_blocks_b; m_blocks_b = 0;
    }
}

process_repeat_usertype_dynarg_custom_t::block_t::block_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_custom_t* p__parent, process_repeat_usertype_dynarg_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
