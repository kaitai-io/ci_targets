// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_complex.h"

repeatUntilComplex_t::repeatUntilComplex_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = 0;
    m_second = 0;
    m_third = 0;
    _read();
}

void repeatUntilComplex_t::_read() {
    m_first = new std::vector<typeU1_t*>();
    {
        int i = 0;
        typeU1_t* _;
        do {
            _ = new typeU1_t(m__io, this, m__root);
            m_first->push_back(_);
            i++;
        } while (!(_->count() == 0));
    }
    m_second = new std::vector<typeU2_t*>();
    {
        int i = 0;
        typeU2_t* _;
        do {
            _ = new typeU2_t(m__io, this, m__root);
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

repeatUntilComplex_t::~repeatUntilComplex_t() {
    for (std::vector<typeU1_t*>::iterator it = m_first->begin(); it != m_first->end(); ++it) {
        delete *it;
    }
    delete m_first;
    for (std::vector<typeU2_t*>::iterator it = m_second->begin(); it != m_second->end(); ++it) {
        delete *it;
    }
    delete m_second;
    delete m_third;
}

repeatUntilComplex_t::typeU1_t::typeU1_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = 0;
    _read();
}

void repeatUntilComplex_t::typeU1_t::_read() {
    m_count = m__io->read_u1();
    int l_values = count();
    m_values = new std::vector<uint8_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(m__io->read_u1());
    }
}

repeatUntilComplex_t::typeU1_t::~typeU1_t() {
    delete m_values;
}

repeatUntilComplex_t::typeU2_t::typeU2_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent, repeatUntilComplex_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_values = 0;
    _read();
}

void repeatUntilComplex_t::typeU2_t::_read() {
    m_count = m__io->read_u2le();
    int l_values = count();
    m_values = new std::vector<uint16_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(m__io->read_u2le());
    }
}

repeatUntilComplex_t::typeU2_t::~typeU2_t() {
    delete m_values;
}
