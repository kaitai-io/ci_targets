// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "multiple_use.h"

multiple_use_t::multiple_use_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_t1 = nullptr;
    m_t2 = nullptr;
    _read();
}

void multiple_use_t::_read() {
    m_t1 = std::unique_ptr<type_1_t>(new type_1_t(m__io, this, m__root));
    m_t2 = std::unique_ptr<type_2_t>(new type_2_t(m__io, this, m__root));
}

multiple_use_t::~multiple_use_t() {
    _cleanUp();
}

void multiple_use_t::_cleanUp() {
}

multiple_use_t::multi_t::multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void multiple_use_t::multi_t::_read() {
    m_value = m__io->read_s4le();
}

multiple_use_t::multi_t::~multi_t() {
    _cleanUp();
}

void multiple_use_t::multi_t::_cleanUp() {
}

multiple_use_t::type_1_t::type_1_t(kaitai::kstream* p__io, multiple_use_t* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_first_use = nullptr;
    _read();
}

void multiple_use_t::type_1_t::_read() {
    m_first_use = std::unique_ptr<multi_t>(new multi_t(m__io, this, m__root));
}

multiple_use_t::type_1_t::~type_1_t() {
    _cleanUp();
}

void multiple_use_t::type_1_t::_cleanUp() {
}

multiple_use_t::type_2_t::type_2_t(kaitai::kstream* p__io, multiple_use_t* p__parent, multiple_use_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_second_use = nullptr;
    f_second_use = false;
    _read();
}

void multiple_use_t::type_2_t::_read() {
}

multiple_use_t::type_2_t::~type_2_t() {
    _cleanUp();
}

void multiple_use_t::type_2_t::_cleanUp() {
    if (f_second_use) {
    }
}

multiple_use_t::multi_t* multiple_use_t::type_2_t::second_use() {
    if (f_second_use)
        return m_second_use.get();
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_second_use = std::unique_ptr<multi_t>(new multi_t(m__io, this, m__root));
    m__io->seek(_pos);
    f_second_use = true;
    return m_second_use.get();
}
