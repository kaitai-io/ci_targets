// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_eos_pad_term.h"

str_eos_pad_term_t::str_eos_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
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

void str_eos_pad_term_t::_read() {
    m__raw_str_pad = m__io->read_bytes(20);
    m__io__raw_str_pad = new kaitai::kstream(m__raw_str_pad);
    m_str_pad = new str_pad_type_t(m__io__raw_str_pad, this, m__root);
    m__raw_str_term = m__io->read_bytes(20);
    m__io__raw_str_term = new kaitai::kstream(m__raw_str_term);
    m_str_term = new str_term_type_t(m__io__raw_str_term, this, m__root);
    m__raw_str_term_and_pad = m__io->read_bytes(20);
    m__io__raw_str_term_and_pad = new kaitai::kstream(m__raw_str_term_and_pad);
    m_str_term_and_pad = new str_term_and_pad_type_t(m__io__raw_str_term_and_pad, this, m__root);
    m__raw_str_term_include = m__io->read_bytes(20);
    m__io__raw_str_term_include = new kaitai::kstream(m__raw_str_term_include);
    m_str_term_include = new str_term_include_type_t(m__io__raw_str_term_include, this, m__root);
}

str_eos_pad_term_t::~str_eos_pad_term_t() {
    _clean_up();
}

void str_eos_pad_term_t::_clean_up() {
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

str_eos_pad_term_t::str_pad_type_t::str_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_t::str_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 64), "UTF-8");
}

str_eos_pad_term_t::str_pad_type_t::~str_pad_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_pad_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_and_pad_type_t::str_term_and_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_t::str_term_and_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 64, false), "UTF-8");
}

str_eos_pad_term_t::str_term_and_pad_type_t::~str_term_and_pad_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_and_pad_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_include_type_t::str_term_include_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_t::str_term_include_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, true), "UTF-8");
}

str_eos_pad_term_t::str_term_include_type_t::~str_term_include_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_include_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_type_t::str_term_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_eos_pad_term_t::str_term_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, false), "UTF-8");
}

str_eos_pad_term_t::str_term_type_t::~str_term_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_type_t::_clean_up() {
}
