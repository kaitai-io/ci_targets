// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "user_type.h"

userType_t::userType_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, userType_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    _read();
}

void userType_t::_read() {
    m_one = std::unique_ptr<header_t>(new header_t(m__io, this, m__root));
}

userType_t::~userType_t() {
}

userType_t::header_t::header_t(kaitai::kstream* p__io, userType_t* p__parent, userType_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void userType_t::header_t::_read() {
    m_width = m__io->read_u4le();
    m_height = m__io->read_u4le();
}

userType_t::header_t::~header_t() {
}
