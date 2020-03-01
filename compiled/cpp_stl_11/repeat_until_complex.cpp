// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_complex.h"

repeatUntilComplex_t::repeatUntilComplex_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = nullptr;
    m_second = nullptr;
    m_third = nullptr;
    _read();
}

void repeatUntilComplex_t::_read() {
    m_first = std::unique_ptr<std::vector<std::unique_ptr<typeU1_t>>>(new std::vector<std::unique_ptr<typeU1_t>>());
    {
        int i = 0;
        typeU1_t* _;
        do {
            _ = new typeU1_t(m__io, this, m__root);
            m_first->push_back(std::move(std::unique_ptr<typeU1_t>(_)));
            i++;
        } while (!(_->count() == 0));
    }
    m_second = std::unique_ptr<std::vector<std::unique_ptr<typeU2_t>>>(new std::vector<std::unique_ptr<typeU2_t>>());
    {
        int i = 0;
        typeU2_t* _;
        do {
            _ = new typeU2_t(m__io, this, m__root);
            m_second->push_back(std::move(std::unique_ptr<typeU2_t>(_)));
            i++;
        } while (!(_->count() == 0));
    }
    m_third = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
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

repeatUntilComplex_t::~repeatUntilComplex_t() {
}

repeatUntilComplex_t::typeU1_t::typeU1_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = nullptr;
    _read();
}

void repeatUntilComplex_t::typeU1_t::_read() {
    m_count = m__io->read_u1();
    int l_values = count();
    m_values = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(std::move(m__io->read_u1()));
    }
}

repeatUntilComplex_t::typeU1_t::~typeU1_t() {
}

repeatUntilComplex_t::typeU2_t::typeU2_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = nullptr;
    _read();
}

void repeatUntilComplex_t::typeU2_t::_read() {
    m_count = m__io->read_u2le();
    int l_values = count();
    m_values = std::unique_ptr<std::vector<uint16_t>>(new std::vector<uint16_t>());
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(std::move(m__io->read_u2le()));
    }
}

repeatUntilComplex_t::typeU2_t::~typeU2_t() {
}
