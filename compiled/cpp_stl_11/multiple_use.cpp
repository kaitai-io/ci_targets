// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "multiple_use.h"

multipleUse_t::multipleUse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multipleUse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_t1 = nullptr;
    m_t2 = nullptr;
    _read();
}

void multipleUse_t::_read() {
    m_t1 = std::unique_ptr<type1_t>(new type1_t(m__io, this, m__root));
    m_t2 = std::unique_ptr<type2_t>(new type2_t(m__io, this, m__root));
}

multipleUse_t::~multipleUse_t() {
}

multipleUse_t::multi_t::multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, multipleUse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void multipleUse_t::multi_t::_read() {
    m_value = m__io->read_s4le();
}

multipleUse_t::multi_t::~multi_t() {
}

multipleUse_t::type1_t::type1_t(kaitai::kstream* p__io, multipleUse_t* p__parent, multipleUse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_first_use = nullptr;
    _read();
}

void multipleUse_t::type1_t::_read() {
    m_first_use = std::unique_ptr<multi_t>(new multi_t(m__io, this, m__root));
}

multipleUse_t::type1_t::~type1_t() {
}

multipleUse_t::type2_t::type2_t(kaitai::kstream* p__io, multipleUse_t* p__parent, multipleUse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_second_use = nullptr;
    f_second_use = false;
    _read();
}

void multipleUse_t::type2_t::_read() {
}

multipleUse_t::type2_t::~type2_t() {
    if (f_second_use) {
    }
}

multipleUse_t::multi_t* multipleUse_t::type2_t::second_use() {
    if (f_second_use)
        return m_second_use.get();
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_second_use = std::unique_ptr<multi_t>(new multi_t(m__io, this, m__root));
    m__io->seek(_pos);
    f_second_use = true;
    return m_second_use.get();
}
