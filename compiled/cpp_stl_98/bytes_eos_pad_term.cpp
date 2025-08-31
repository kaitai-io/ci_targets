// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bytes_eos_pad_term.h"

bytes_eos_pad_term_t::bytes_eos_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bytes_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
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

void bytes_eos_pad_term_t::_read() {
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

bytes_eos_pad_term_t::~bytes_eos_pad_term_t() {
    _clean_up();
}

void bytes_eos_pad_term_t::_clean_up() {
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

bytes_eos_pad_term_t::str_pad_type_t::str_pad_type_t(kaitai::kstream* p__io, bytes_eos_pad_term_t* p__parent, bytes_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bytes_eos_pad_term_t::str_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 64);
}

bytes_eos_pad_term_t::str_pad_type_t::~str_pad_type_t() {
    _clean_up();
}

void bytes_eos_pad_term_t::str_pad_type_t::_clean_up() {
}

bytes_eos_pad_term_t::str_term_and_pad_type_t::str_term_and_pad_type_t(kaitai::kstream* p__io, bytes_eos_pad_term_t* p__parent, bytes_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bytes_eos_pad_term_t::str_term_and_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 64, false);
}

bytes_eos_pad_term_t::str_term_and_pad_type_t::~str_term_and_pad_type_t() {
    _clean_up();
}

void bytes_eos_pad_term_t::str_term_and_pad_type_t::_clean_up() {
}

bytes_eos_pad_term_t::str_term_include_type_t::str_term_include_type_t(kaitai::kstream* p__io, bytes_eos_pad_term_t* p__parent, bytes_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bytes_eos_pad_term_t::str_term_include_type_t::_read() {
    m_value = kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, true);
}

bytes_eos_pad_term_t::str_term_include_type_t::~str_term_include_type_t() {
    _clean_up();
}

void bytes_eos_pad_term_t::str_term_include_type_t::_clean_up() {
}

bytes_eos_pad_term_t::str_term_type_t::str_term_type_t(kaitai::kstream* p__io, bytes_eos_pad_term_t* p__parent, bytes_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bytes_eos_pad_term_t::str_term_type_t::_read() {
    m_value = kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, false);
}

bytes_eos_pad_term_t::str_term_type_t::~str_term_type_t() {
    _clean_up();
}

void bytes_eos_pad_term_t::str_term_type_t::_clean_up() {
}
