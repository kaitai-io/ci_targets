// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "multiple_use.h"

multiple_use_t::multiple_use_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_t1 = 0;
    m_t2 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void multiple_use_t::_read() {
    m_t1 = new type_1_t(m__io, this, m__root);
    m_t2 = new type_2_t(m__io, this, m__root);
}

multiple_use_t::~multiple_use_t() {
    _clean_up();
}

void multiple_use_t::_clean_up() {
    if (m_t1) {
        delete m_t1; m_t1 = 0;
    }
    if (m_t2) {
        delete m_t2; m_t2 = 0;
    }
}

multiple_use_t::multi_t::multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void multiple_use_t::multi_t::_read() {
    m_value = m__io->read_s4le();
}

multiple_use_t::multi_t::~multi_t() {
    _clean_up();
}

void multiple_use_t::multi_t::_clean_up() {
}

multiple_use_t::type_1_t::type_1_t(kaitai::kstream* p__io, multiple_use_t* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_first_use = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void multiple_use_t::type_1_t::_read() {
    m_first_use = new multi_t(m__io, this, m__root);
}

multiple_use_t::type_1_t::~type_1_t() {
    _clean_up();
}

void multiple_use_t::type_1_t::_clean_up() {
    if (m_first_use) {
        delete m_first_use; m_first_use = 0;
    }
}

multiple_use_t::type_2_t::type_2_t(kaitai::kstream* p__io, multiple_use_t* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_second_use = 0;
    f_second_use = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void multiple_use_t::type_2_t::_read() {
}

multiple_use_t::type_2_t::~type_2_t() {
    _clean_up();
}

void multiple_use_t::type_2_t::_clean_up() {
    if (f_second_use) {
        if (m_second_use) {
            delete m_second_use; m_second_use = 0;
        }
    }
}

multiple_use_t::multi_t* multiple_use_t::type_2_t::second_use() {
    if (f_second_use)
        return m_second_use;
    f_second_use = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_second_use = new multi_t(m__io, this, m__root);
    m__io->seek(_pos);
    return m_second_use;
}
