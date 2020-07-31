// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_calc_array_type.h"

repeat_until_calc_array_type_t::repeat_until_calc_array_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_calc_array_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_records = 0;
    m__raw_records = 0;
    m__io__raw_records = 0;
    f_recs_accessor = false;
    f_first_rec = false;

    try {
        _read();
    } catch(...) {
        this->~repeat_until_calc_array_type_t();
        throw;
    }
}

void repeat_until_calc_array_type_t::_read() {
    m__raw_records = new std::vector<std::string>();
    m__io__raw_records = new std::vector<kaitai::kstream*>();
    m_records = new std::vector<record_t*>();
    {
        int i = 0;
        record_t* _;
        do {
            std::string _buf = m__io->read_bytes(5);
            m__raw_records->push_back(_buf);
            kaitai::kstream* io__raw_records = new kaitai::kstream(_buf);
            m__io__raw_records->push_back(io__raw_records);
            _ = new record_t(io__raw_records, this, m__root);
            m_records->push_back(_);
            i++;
        } while (!(_->marker() == 170));
    }
}

repeat_until_calc_array_type_t::~repeat_until_calc_array_type_t() {
    if (m__raw_records) delete m__raw_records;
    if (m__io__raw_records) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records->begin(); it != m__io__raw_records->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records;
    }
    if (m_records) {
        for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
            delete *it;
        }
        delete m_records;
    }
}

repeat_until_calc_array_type_t::record_t::record_t(kaitai::kstream* p__io, repeat_until_calc_array_type_t* p__parent, repeat_until_calc_array_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~record_t();
        throw;
    }
}

void repeat_until_calc_array_type_t::record_t::_read() {
    m_marker = m__io->read_u1();
    m_body = m__io->read_u4le();
}

repeat_until_calc_array_type_t::record_t::~record_t() {
}

std::vector<repeat_until_calc_array_type_t::record_t*>* repeat_until_calc_array_type_t::recs_accessor() {
    if (f_recs_accessor)
        return m_recs_accessor;
    m_recs_accessor = records();
    f_recs_accessor = true;
    return m_recs_accessor;
}

repeat_until_calc_array_type_t::record_t* repeat_until_calc_array_type_t::first_rec() {
    if (f_first_rec)
        return m_first_rec;
    m_first_rec = recs_accessor()->front();
    f_first_rec = true;
    return m_first_rec;
}
