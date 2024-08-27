// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "debug_enum_name.h"
std::set<debug_enum_name_t::test_enum1_t> debug_enum_name_t::_build_values_test_enum1_t() {
    std::set<debug_enum_name_t::test_enum1_t> _t;
    _t.insert(debug_enum_name_t::TEST_ENUM1_ENUM_VALUE_80);
    return _t;
}
const std::set<debug_enum_name_t::test_enum1_t> debug_enum_name_t::_values_test_enum1_t = debug_enum_name_t::_build_values_test_enum1_t();
bool debug_enum_name_t::_is_defined_test_enum1_t(debug_enum_name_t::test_enum1_t v) {
    return debug_enum_name_t::_values_test_enum1_t.find(v) != debug_enum_name_t::_values_test_enum1_t.end();
}
std::set<debug_enum_name_t::test_enum2_t> debug_enum_name_t::_build_values_test_enum2_t() {
    std::set<debug_enum_name_t::test_enum2_t> _t;
    _t.insert(debug_enum_name_t::TEST_ENUM2_ENUM_VALUE_65);
    return _t;
}
const std::set<debug_enum_name_t::test_enum2_t> debug_enum_name_t::_values_test_enum2_t = debug_enum_name_t::_build_values_test_enum2_t();
bool debug_enum_name_t::_is_defined_test_enum2_t(debug_enum_name_t::test_enum2_t v) {
    return debug_enum_name_t::_values_test_enum2_t.find(v) != debug_enum_name_t::_values_test_enum2_t.end();
}

debug_enum_name_t::debug_enum_name_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_enum_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_array_of_ints = 0;
    m_test_type = 0;
}

void debug_enum_name_t::_read() {
    m_one = static_cast<debug_enum_name_t::test_enum1_t>(m__io->read_u1());
    m_array_of_ints = new std::vector<test_enum2_t>();
    const int l_array_of_ints = 1;
    for (int i = 0; i < l_array_of_ints; i++) {
        m_array_of_ints->push_back(static_cast<debug_enum_name_t::test_enum2_t>(m__io->read_u1()));
    }
    m_test_type = new test_subtype_t(m__io, this, m__root);
    m_test_type->_read();
}

debug_enum_name_t::~debug_enum_name_t() {
    _clean_up();
}

void debug_enum_name_t::_clean_up() {
    if (m_array_of_ints) {
        delete m_array_of_ints; m_array_of_ints = 0;
    }
    if (m_test_type) {
        delete m_test_type; m_test_type = 0;
    }
}
std::set<debug_enum_name_t::test_subtype_t::inner_enum1_t> debug_enum_name_t::test_subtype_t::_build_values_inner_enum1_t() {
    std::set<debug_enum_name_t::test_subtype_t::inner_enum1_t> _t;
    _t.insert(debug_enum_name_t::test_subtype_t::INNER_ENUM1_ENUM_VALUE_67);
    return _t;
}
const std::set<debug_enum_name_t::test_subtype_t::inner_enum1_t> debug_enum_name_t::test_subtype_t::_values_inner_enum1_t = debug_enum_name_t::test_subtype_t::_build_values_inner_enum1_t();
bool debug_enum_name_t::test_subtype_t::_is_defined_inner_enum1_t(debug_enum_name_t::test_subtype_t::inner_enum1_t v) {
    return debug_enum_name_t::test_subtype_t::_values_inner_enum1_t.find(v) != debug_enum_name_t::test_subtype_t::_values_inner_enum1_t.end();
}
std::set<debug_enum_name_t::test_subtype_t::inner_enum2_t> debug_enum_name_t::test_subtype_t::_build_values_inner_enum2_t() {
    std::set<debug_enum_name_t::test_subtype_t::inner_enum2_t> _t;
    _t.insert(debug_enum_name_t::test_subtype_t::INNER_ENUM2_ENUM_VALUE_11);
    return _t;
}
const std::set<debug_enum_name_t::test_subtype_t::inner_enum2_t> debug_enum_name_t::test_subtype_t::_values_inner_enum2_t = debug_enum_name_t::test_subtype_t::_build_values_inner_enum2_t();
bool debug_enum_name_t::test_subtype_t::_is_defined_inner_enum2_t(debug_enum_name_t::test_subtype_t::inner_enum2_t v) {
    return debug_enum_name_t::test_subtype_t::_values_inner_enum2_t.find(v) != debug_enum_name_t::test_subtype_t::_values_inner_enum2_t.end();
}

debug_enum_name_t::test_subtype_t::test_subtype_t(kaitai::kstream* p__io, debug_enum_name_t* p__parent, debug_enum_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_instance_field = false;
}

void debug_enum_name_t::test_subtype_t::_read() {
    m_field1 = static_cast<debug_enum_name_t::test_subtype_t::inner_enum1_t>(m__io->read_u1());
    m_field2 = m__io->read_u1();
}

debug_enum_name_t::test_subtype_t::~test_subtype_t() {
    _clean_up();
}

void debug_enum_name_t::test_subtype_t::_clean_up() {
}

debug_enum_name_t::test_subtype_t::inner_enum2_t debug_enum_name_t::test_subtype_t::instance_field() {
    if (f_instance_field)
        return m_instance_field;
    f_instance_field = true;
    m_instance_field = static_cast<debug_enum_name_t::test_subtype_t::inner_enum2_t>(field2() & 15);
    return m_instance_field;
}
