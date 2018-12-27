// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_complex.h"

#include <memory>

repeat_until_complex_t::repeat_until_complex_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_complex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = nullptr;
    m_second = nullptr;
    m_third = nullptr;
    _read();
}

void repeat_until_complex_t::_read() {
    m_first = new std::vector<std::unique_ptr<type_u1_t>>();
    {
        int i = 0;
        std::unique_ptr<type_u1_t> _;
        do {
            _ = std::unique_ptr<type_u1_t>(new type_u1_t(m__io, this, m__root));
            m_first->push_back(_);
            i++;
        } while (!(_->count() == 0));
    }
    m_second = new std::vector<std::unique_ptr<type_u2_t>>();
    {
        int i = 0;
        std::unique_ptr<type_u2_t> _;
        do {
            _ = std::unique_ptr<type_u2_t>(new type_u2_t(m__io, this, m__root));
            m_second->push_back(_);
            i++;
        } while (!(_->count() == 0));
    }
    m_third = new std::vector<uint8_t>();
    {
        int i = 0;
        uint8_t _;
        do {
            _ = m__io->read_u1();
            m_third->push_back(_);
            i++;
        } while (!(_ == 0));
    }
}

repeat_until_complex_t::~repeat_until_complex_t() {
}

repeat_until_complex_t::type_u1_t::type_u1_t(kaitai::kstream* p__io, repeat_until_complex_t* p__parent, repeat_until_complex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = nullptr;
    _read();
}

void repeat_until_complex_t::type_u1_t::_read() {
    m_count = m__io->read_u1();
    int l_values = count();
    m_values = new std::vector<uint8_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(std::move(m__io->read_u1()));
    }
}

repeat_until_complex_t::type_u1_t::~type_u1_t() {
}

repeat_until_complex_t::type_u2_t::type_u2_t(kaitai::kstream* p__io, repeat_until_complex_t* p__parent, repeat_until_complex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = nullptr;
    _read();
}

void repeat_until_complex_t::type_u2_t::_read() {
    m_count = m__io->read_u2le();
    int l_values = count();
    m_values = new std::vector<uint16_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(std::move(m__io->read_u2le()));
    }
}

repeat_until_complex_t::type_u2_t::~type_u2_t() {
}
