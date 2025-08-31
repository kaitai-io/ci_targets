// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_bytes4.h"

term_bytes4_t::term_bytes4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_bytes4_t* p__root) : kaitai::kstruct(p__io) {
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

void term_bytes4_t::_read() {
    m__raw_s1 = m__io->read_bytes(3);
    m__io__raw_s1 = new kaitai::kstream(m__raw_s1);
    m_s1 = new s1_type_t(m__io__raw_s1, this, m__root);
    m_skip_term1 = m__io->read_u1();
    m__raw_s2 = m__io->read_bytes(3);
    m__io__raw_s2 = new kaitai::kstream(m__raw_s2);
    m_s2 = new s2_type_t(m__io__raw_s2, this, m__root);
    m_skip_term2 = m__io->read_u1();
    m__raw_s3 = m__io->read_bytes(3);
    m__io__raw_s3 = new kaitai::kstream(m__raw_s3);
    m_s3 = new s3_type_t(m__io__raw_s3, this, m__root);
}

term_bytes4_t::~term_bytes4_t() {
    _clean_up();
}

void term_bytes4_t::_clean_up() {
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

term_bytes4_t::s1_type_t::s1_type_t(kaitai::kstream* p__io, term_bytes4_t* p__parent, term_bytes4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_bytes4_t::s1_type_t::_read() {
    m_value = m__io->read_bytes_term(124, false, true, false);
}

term_bytes4_t::s1_type_t::~s1_type_t() {
    _clean_up();
}

void term_bytes4_t::s1_type_t::_clean_up() {
}

term_bytes4_t::s2_type_t::s2_type_t(kaitai::kstream* p__io, term_bytes4_t* p__parent, term_bytes4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_bytes4_t::s2_type_t::_read() {
    m_value = m__io->read_bytes_term(124, false, false, false);
}

term_bytes4_t::s2_type_t::~s2_type_t() {
    _clean_up();
}

void term_bytes4_t::s2_type_t::_clean_up() {
}

term_bytes4_t::s3_type_t::s3_type_t(kaitai::kstream* p__io, term_bytes4_t* p__parent, term_bytes4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_bytes4_t::s3_type_t::_read() {
    m_value = m__io->read_bytes_term(64, true, true, false);
}

term_bytes4_t::s3_type_t::~s3_type_t() {
    _clean_up();
}

void term_bytes4_t::s3_type_t::_clean_up() {
}
