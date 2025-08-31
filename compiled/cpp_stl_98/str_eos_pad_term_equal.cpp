// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_eos_pad_term_equal.h"

str_eos_pad_term_equal_t::str_eos_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
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

void str_eos_pad_term_equal_t::_read() {
    m__raw_s1 = m__io->read_bytes(20);
    m__io__raw_s1 = new kaitai::kstream(m__raw_s1);
    m_s1 = new s1_type_t(m__io__raw_s1, this, m__root);
    m__raw_s2 = m__io->read_bytes(20);
    m__io__raw_s2 = new kaitai::kstream(m__raw_s2);
    m_s2 = new s2_type_t(m__io__raw_s2, this, m__root);
    m__raw_s3 = m__io->read_bytes(20);
    m__io__raw_s3 = new kaitai::kstream(m__raw_s3);
    m_s3 = new s3_type_t(m__io__raw_s3, this, m__root);
    m__raw_s4 = m__io->read_bytes(20);
    m__io__raw_s4 = new kaitai::kstream(m__raw_s4);
    m_s4 = new s4_type_t(m__io__raw_s4, this, m__root);
}

str_eos_pad_term_equal_t::~str_eos_pad_term_equal_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::_clean_up() {
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

str_eos_pad_term_equal_t::s1_type_t::s1_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_equal_t::s1_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 64), 64, false), "UTF-8");
}

str_eos_pad_term_equal_t::s1_type_t::~s1_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s1_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s2_type_t::s2_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_equal_t::s2_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 64, true), "UTF-8");
}

str_eos_pad_term_equal_t::s2_type_t::~s2_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s2_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s3_type_t::s3_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_equal_t::s3_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 43, false), "UTF-8");
}

str_eos_pad_term_equal_t::s3_type_t::~s3_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s3_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s4_type_t::s4_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_equal_t::s4_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 46), 46, true), "UTF-8");
}

str_eos_pad_term_equal_t::s4_type_t::~s4_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s4_type_t::_clean_up() {
}
