// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_calc_array_type.h"

repeat_until_calc_array_type_t::repeat_until_calc_array_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_calc_array_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = nullptr;
    m__raw_records = nullptr;
    m__io__raw_records = nullptr;
    f_first_rec = false;
    f_recs_accessor = false;
    _read();
}

void repeat_until_calc_array_type_t::_read() {
    m__raw_records = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m__io__raw_records = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>>(new std::vector<std::unique_ptr<kaitai::kstream>>());
    m_records = std::unique_ptr<std::vector<std::unique_ptr<record_t>>>(new std::vector<std::unique_ptr<record_t>>());
    {
        int i = 0;
        record_t* _;
        do {
            std::string _buf = m__io->read_bytes(5);
            m__raw_records->push_back(_buf);
            kaitai::kstream* io__raw_records = new kaitai::kstream(_buf);
            m__io__raw_records->emplace_back(io__raw_records);
            _ = new record_t(io__raw_records, this, m__root);
            m_records->push_back(std::move(std::unique_ptr<record_t>(_)));
            i++;
        } while (!(_->marker() == 170));
    }
}

repeat_until_calc_array_type_t::~repeat_until_calc_array_type_t() {
    _clean_up();
}

void repeat_until_calc_array_type_t::_clean_up() {
}

repeat_until_calc_array_type_t::record_t::record_t(kaitai::kstream* p__io, repeat_until_calc_array_type_t* p__parent, repeat_until_calc_array_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void repeat_until_calc_array_type_t::record_t::_read() {
    m_marker = m__io->read_u1();
    m_body = m__io->read_u4le();
}

repeat_until_calc_array_type_t::record_t::~record_t() {
    _clean_up();
}

void repeat_until_calc_array_type_t::record_t::_clean_up() {
}

repeat_until_calc_array_type_t::record_t* repeat_until_calc_array_type_t::first_rec() {
    if (f_first_rec)
        return m_first_rec;
    f_first_rec = true;
    m_first_rec = recs_accessor()->front().get();
    return m_first_rec;
}

std::vector<std::unique_ptr<repeat_until_calc_array_type_t::record_t>>* repeat_until_calc_array_type_t::recs_accessor() {
    if (f_recs_accessor)
        return m_recs_accessor;
    f_recs_accessor = true;
    m_recs_accessor = records();
    return m_recs_accessor;
}
