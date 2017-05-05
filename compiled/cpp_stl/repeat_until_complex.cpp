// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_complex.h"



repeat_until_complex_t::repeat_until_complex_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_until_complex_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_first = new std::vector<type_u1_t*>();
    {
        type_u1_t* _;
        do {
            _ = new type_u1_t(m__io, this, m__root);
            m_first->push_back(_);
        } while (!(_->count() == 0));
    }
    m_second = new std::vector<type_u2_t*>();
    {
        type_u2_t* _;
        do {
            _ = new type_u2_t(m__io, this, m__root);
            m_second->push_back(_);
        } while (!(_->count() == 0));
    }
    m_third = new std::vector<uint8_t>();
    {
        uint8_t _;
        do {
            _ = m__io->read_u1();
            m_third->push_back(_);
        } while (!(_ == 0));
    }
}

repeat_until_complex_t::~repeat_until_complex_t() {
    for (std::vector<type_u1_t*>::iterator it = m_first->begin(); it != m_first->end(); ++it) {
        delete *it;
    }
    delete m_first;
    for (std::vector<type_u2_t*>::iterator it = m_second->begin(); it != m_second->end(); ++it) {
        delete *it;
    }
    delete m_second;
    delete m_third;
}

repeat_until_complex_t::type_u1_t::type_u1_t(kaitai::kstream *p_io, repeat_until_complex_t* p_parent, repeat_until_complex_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_count = m__io->read_u1();
    int l_values = count();
    m_values = new std::vector<uint8_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(m__io->read_u1());
    }
}

repeat_until_complex_t::type_u1_t::~type_u1_t() {
    delete m_values;
}

repeat_until_complex_t::type_u2_t::type_u2_t(kaitai::kstream *p_io, repeat_until_complex_t* p_parent, repeat_until_complex_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_count = m__io->read_u2le();
    int l_values = count();
    m_values = new std::vector<uint16_t>();
    m_values->reserve(l_values);
    for (int i = 0; i < l_values; i++) {
        m_values->push_back(m__io->read_u2le());
    }
}

repeat_until_complex_t::type_u2_t::~type_u2_t() {
    delete m_values;
}
