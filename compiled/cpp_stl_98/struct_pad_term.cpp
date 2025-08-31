// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "struct_pad_term.h"

struct_pad_term_t::struct_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_str_pad = 0;
    m__io__raw_str_pad = 0;
    m_str_term = 0;
    m__io__raw_str_term = 0;
    m_str_term_and_pad = 0;
    m__io__raw_str_term_and_pad = 0;
    m_str_term_include = 0;
    m__io__raw_str_term_include = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void struct_pad_term_t::_read() {
    m__raw_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m__io__raw_str_pad = new kaitai::kstream(m__raw_str_pad);
    m_str_pad = new bytes_wrapper_t(m__io__raw_str_pad, this, m__root);
    m__raw_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m__io__raw_str_term = new kaitai::kstream(m__raw_str_term);
    m_str_term = new bytes_wrapper_t(m__io__raw_str_term, this, m__root);
    m__raw_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m__io__raw_str_term_and_pad = new kaitai::kstream(m__raw_str_term_and_pad);
    m_str_term_and_pad = new bytes_wrapper_t(m__io__raw_str_term_and_pad, this, m__root);
    m__raw_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
    m__io__raw_str_term_include = new kaitai::kstream(m__raw_str_term_include);
    m_str_term_include = new bytes_wrapper_t(m__io__raw_str_term_include, this, m__root);
}

struct_pad_term_t::~struct_pad_term_t() {
    _clean_up();
}

void struct_pad_term_t::_clean_up() {
    if (m__io__raw_str_pad) {
        delete m__io__raw_str_pad; m__io__raw_str_pad = 0;
    }
    if (m_str_pad) {
        delete m_str_pad; m_str_pad = 0;
    }
    if (m__io__raw_str_term) {
        delete m__io__raw_str_term; m__io__raw_str_term = 0;
    }
    if (m_str_term) {
        delete m_str_term; m_str_term = 0;
    }
    if (m__io__raw_str_term_and_pad) {
        delete m__io__raw_str_term_and_pad; m__io__raw_str_term_and_pad = 0;
    }
    if (m_str_term_and_pad) {
        delete m_str_term_and_pad; m_str_term_and_pad = 0;
    }
    if (m__io__raw_str_term_include) {
        delete m__io__raw_str_term_include; m__io__raw_str_term_include = 0;
    }
    if (m_str_term_include) {
        delete m_str_term_include; m_str_term_include = 0;
    }
}

struct_pad_term_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, struct_pad_term_t* p__parent, struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void struct_pad_term_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

struct_pad_term_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void struct_pad_term_t::bytes_wrapper_t::_clean_up() {
}
