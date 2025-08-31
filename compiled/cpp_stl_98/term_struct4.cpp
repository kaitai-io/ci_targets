// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_struct4.h"

term_struct4_t::term_struct4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_struct4_t* p__root) : kaitai::kstruct(p__io) {
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

void term_struct4_t::_read() {
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

term_struct4_t::~term_struct4_t() {
    _clean_up();
}

void term_struct4_t::_clean_up() {
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

term_struct4_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_struct4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct4_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

term_struct4_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void term_struct4_t::bytes_wrapper_t::_clean_up() {
}

term_struct4_t::s1_type_t::s1_type_t(kaitai::kstream* p__io, term_struct4_t* p__parent, term_struct4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_value = 0;
    m__io__raw_value = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct4_t::s1_type_t::_read() {
    m__raw_value = m__io->read_bytes_term(124, false, true, false);
    m__io__raw_value = new kaitai::kstream(m__raw_value);
    m_value = new bytes_wrapper_t(m__io__raw_value, this, m__root);
}

term_struct4_t::s1_type_t::~s1_type_t() {
    _clean_up();
}

void term_struct4_t::s1_type_t::_clean_up() {
    if (m__io__raw_value) {
        delete m__io__raw_value; m__io__raw_value = 0;
    }
    if (m_value) {
        delete m_value; m_value = 0;
    }
}

term_struct4_t::s2_type_t::s2_type_t(kaitai::kstream* p__io, term_struct4_t* p__parent, term_struct4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_value = 0;
    m__io__raw_value = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct4_t::s2_type_t::_read() {
    m__raw_value = m__io->read_bytes_term(124, false, false, false);
    m__io__raw_value = new kaitai::kstream(m__raw_value);
    m_value = new bytes_wrapper_t(m__io__raw_value, this, m__root);
}

term_struct4_t::s2_type_t::~s2_type_t() {
    _clean_up();
}

void term_struct4_t::s2_type_t::_clean_up() {
    if (m__io__raw_value) {
        delete m__io__raw_value; m__io__raw_value = 0;
    }
    if (m_value) {
        delete m_value; m_value = 0;
    }
}

term_struct4_t::s3_type_t::s3_type_t(kaitai::kstream* p__io, term_struct4_t* p__parent, term_struct4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_value = 0;
    m__io__raw_value = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_struct4_t::s3_type_t::_read() {
    m__raw_value = m__io->read_bytes_term(64, true, true, false);
    m__io__raw_value = new kaitai::kstream(m__raw_value);
    m_value = new bytes_wrapper_t(m__io__raw_value, this, m__root);
}

term_struct4_t::s3_type_t::~s3_type_t() {
    _clean_up();
}

void term_struct4_t::s3_type_t::_clean_up() {
    if (m__io__raw_value) {
        delete m__io__raw_value; m__io__raw_value = 0;
    }
    if (m_value) {
        delete m_value; m_value = 0;
    }
}
