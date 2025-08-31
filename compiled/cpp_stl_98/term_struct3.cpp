// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_struct3.h"

term_struct3_t::term_struct3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_struct3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_s1 = 0;
    m__io__raw_s1 = 0;
    m_s2 = 0;
    m__io__raw_s2 = 0;
    m_s3 = 0;
    m__io__raw_s3 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct3_t::_read() {
    m__raw_s1 = m__io->read_bytes_term(124, false, false, true);
    m__io__raw_s1 = new kaitai::kstream(m__raw_s1);
    m_s1 = new bytes_wrapper_t(m__io__raw_s1, this, m__root);
    m__raw_s2 = m__io->read_bytes_term(64, false, false, true);
    m__io__raw_s2 = new kaitai::kstream(m__raw_s2);
    m_s2 = new bytes_wrapper_t(m__io__raw_s2, this, m__root);
    m__raw_s3 = m__io->read_bytes_term(64, false, true, true);
    m__io__raw_s3 = new kaitai::kstream(m__raw_s3);
    m_s3 = new bytes_wrapper_t(m__io__raw_s3, this, m__root);
}

term_struct3_t::~term_struct3_t() {
    _clean_up();
}

void term_struct3_t::_clean_up() {
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
}

term_struct3_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, term_struct3_t* p__parent, term_struct3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct3_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

term_struct3_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void term_struct3_t::bytes_wrapper_t::_clean_up() {
}
