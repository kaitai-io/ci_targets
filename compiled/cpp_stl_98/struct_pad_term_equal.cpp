// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "struct_pad_term_equal.h"

struct_pad_term_equal_t::struct_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, struct_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_s1 = 0;
    m__io__raw_s1 = 0;
    m_s2 = 0;
    m__io__raw_s2 = 0;
    m_s3 = 0;
    m__io__raw_s3 = 0;
    m_s4 = 0;
    m__io__raw_s4 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void struct_pad_term_equal_t::_read() {
    m__raw_s1 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64), 64, false);
    m__io__raw_s1 = new kaitai::kstream(m__raw_s1);
    m_s1 = new bytes_wrapper_t(m__io__raw_s1, this, m__root);
    m__raw_s2 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, true);
    m__io__raw_s2 = new kaitai::kstream(m__raw_s2);
    m_s2 = new bytes_wrapper_t(m__io__raw_s2, this, m__root);
    m__raw_s3 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 43, false);
    m__io__raw_s3 = new kaitai::kstream(m__raw_s3);
    m_s3 = new bytes_wrapper_t(m__io__raw_s3, this, m__root);
    m__raw_s4 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 46), 46, true);
    m__io__raw_s4 = new kaitai::kstream(m__raw_s4);
    m_s4 = new bytes_wrapper_t(m__io__raw_s4, this, m__root);
}

struct_pad_term_equal_t::~struct_pad_term_equal_t() {
    _clean_up();
}

void struct_pad_term_equal_t::_clean_up() {
    if (m__io__raw_s1) {
        delete m__io__raw_s1; m__io__raw_s1 = 0;
    }
    if (m_s1) {
        delete m_s1; m_s1 = 0;
    }
    if (m__io__raw_s2) {
        delete m__io__raw_s2; m__io__raw_s2 = 0;
    }
    if (m_s2) {
        delete m_s2; m_s2 = 0;
    }
    if (m__io__raw_s3) {
        delete m__io__raw_s3; m__io__raw_s3 = 0;
    }
    if (m_s3) {
        delete m_s3; m_s3 = 0;
    }
    if (m__io__raw_s4) {
        delete m__io__raw_s4; m__io__raw_s4 = 0;
    }
    if (m_s4) {
        delete m_s4; m_s4 = 0;
    }
}

struct_pad_term_equal_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, struct_pad_term_equal_t* p__parent, struct_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void struct_pad_term_equal_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

struct_pad_term_equal_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void struct_pad_term_equal_t::bytes_wrapper_t::_clean_up() {
}
