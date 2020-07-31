// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "user_type.h"

user_type_t::user_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, user_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = 0;

    try {
        _read();
    } catch(...) {
        this->~user_type_t();
        throw;
    }
}

void user_type_t::_read() {
    m_one = new header_t(m__io, this, m__root);
}

user_type_t::~user_type_t() {
    delete m_one;
}

user_type_t::header_t::header_t(kaitai::kstream* p__io, user_type_t* p__parent, user_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~header_t();
        throw;
    }
}

void user_type_t::header_t::_read() {
    m_width = m__io->read_u4le();
    m_height = m__io->read_u4le();
}

user_type_t::header_t::~header_t() {
}
