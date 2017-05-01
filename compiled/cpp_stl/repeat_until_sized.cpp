// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_sized.h"

#include <iostream>
#include <fstream>

repeat_until_sized_t::repeat_until_sized_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_until_sized_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m__raw_records = new std::vector<std::string>();
    m_records = new std::vector<record_t*>();
    {
        record_t* _;
        do {
            std::string _buf = m__io->read_bytes(5);
            m__raw_records->push_back(_buf);
            m__io__raw_records = new kaitai::kstream(_buf);
            _ = new record_t(m__io__raw_records, this, m__root);
            m_records->push_back(_);
        } while (!(_->marker() == 170));
    }
}

repeat_until_sized_t::~repeat_until_sized_t() {
    delete m__raw_records;
    for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
        delete *it;
    }
    delete m_records;
}

repeat_until_sized_t::record_t::record_t(kaitai::kstream *p_io, repeat_until_sized_t* p_parent, repeat_until_sized_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_marker = m__io->read_u1();
    m_body = m__io->read_u4le();
}

repeat_until_sized_t::record_t::~record_t() {
}
