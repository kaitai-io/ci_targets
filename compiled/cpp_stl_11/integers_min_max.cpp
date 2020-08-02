// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "integers_min_max.h"

integers_min_max_t::integers_min_max_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, integers_min_max_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_unsigned_min = nullptr;
    m_unsigned_max = nullptr;
    m_signed_min = nullptr;
    m_signed_max = nullptr;
    _read();
}

void integers_min_max_t::_read() {
    m_unsigned_min = std::unique_ptr<unsigned_t>(new unsigned_t(m__io, this, m__root));
    m_unsigned_max = std::unique_ptr<unsigned_t>(new unsigned_t(m__io, this, m__root));
    m_signed_min = std::unique_ptr<signed_t>(new signed_t(m__io, this, m__root));
    m_signed_max = std::unique_ptr<signed_t>(new signed_t(m__io, this, m__root));
}

integers_min_max_t::~integers_min_max_t() {
    _cleanUp();
}

void integers_min_max_t::_cleanUp() {
}

integers_min_max_t::unsigned_t::unsigned_t(kaitai::kstream* p__io, integers_min_max_t* p__parent, integers_min_max_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void integers_min_max_t::unsigned_t::_read() {
    m_u1 = m__io->read_u1();
    m_u2le = m__io->read_u2le();
    m_u4le = m__io->read_u4le();
    m_u8le = m__io->read_u8le();
    m_u2be = m__io->read_u2be();
    m_u4be = m__io->read_u4be();
    m_u8be = m__io->read_u8be();
}

integers_min_max_t::unsigned_t::~unsigned_t() {
    _cleanUp();
}

void integers_min_max_t::unsigned_t::_cleanUp() {
}

integers_min_max_t::signed_t::signed_t(kaitai::kstream* p__io, integers_min_max_t* p__parent, integers_min_max_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void integers_min_max_t::signed_t::_read() {
    m_s1 = m__io->read_s1();
    m_s2le = m__io->read_s2le();
    m_s4le = m__io->read_s4le();
    m_s8le = m__io->read_s8le();
    m_s2be = m__io->read_s2be();
    m_s4be = m__io->read_s4be();
    m_s8be = m__io->read_s8be();
}

integers_min_max_t::signed_t::~signed_t() {
    _cleanUp();
}

void integers_min_max_t::signed_t::_cleanUp() {
}
