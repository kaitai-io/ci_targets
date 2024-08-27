// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "debug_enum_name.h"
const std::set<debug_enum_name_t::test_enum1_t> debug_enum_name_t::_values_test_enum1_t{
    debug_enum_name_t::TEST_ENUM1_ENUM_VALUE_80,
};
bool debug_enum_name_t::_is_defined_test_enum1_t(debug_enum_name_t::test_enum1_t v) {
    return debug_enum_name_t::_values_test_enum1_t.find(v) != debug_enum_name_t::_values_test_enum1_t.end();
}
const std::set<debug_enum_name_t::test_enum2_t> debug_enum_name_t::_values_test_enum2_t{
    debug_enum_name_t::TEST_ENUM2_ENUM_VALUE_65,
};
bool debug_enum_name_t::_is_defined_test_enum2_t(debug_enum_name_t::test_enum2_t v) {
    return debug_enum_name_t::_values_test_enum2_t.find(v) != debug_enum_name_t::_values_test_enum2_t.end();
}

debug_enum_name_t::debug_enum_name_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_enum_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_array_of_ints = nullptr;
    m_test_type = nullptr;
}

void debug_enum_name_t::_read() {
    m_one = static_cast<debug_enum_name_t::test_enum1_t>(m__io->read_u1());
    m_array_of_ints = std::unique_ptr<std::vector<test_enum2_t>>(new std::vector<test_enum2_t>());
    const int l_array_of_ints = 1;
    for (int i = 0; i < l_array_of_ints; i++) {
        m_array_of_ints->push_back(std::move(static_cast<debug_enum_name_t::test_enum2_t>(m__io->read_u1())));
    }
    m_test_type = std::unique_ptr<test_subtype_t>(new test_subtype_t(m__io, this, m__root));
    m_test_type->_read();
}

debug_enum_name_t::~debug_enum_name_t() {
    _clean_up();
}

void debug_enum_name_t::_clean_up() {
}
const std::set<debug_enum_name_t::test_subtype_t::inner_enum1_t> debug_enum_name_t::test_subtype_t::_values_inner_enum1_t{
    debug_enum_name_t::test_subtype_t::INNER_ENUM1_ENUM_VALUE_67,
};
bool debug_enum_name_t::test_subtype_t::_is_defined_inner_enum1_t(debug_enum_name_t::test_subtype_t::inner_enum1_t v) {
    return debug_enum_name_t::test_subtype_t::_values_inner_enum1_t.find(v) != debug_enum_name_t::test_subtype_t::_values_inner_enum1_t.end();
}
const std::set<debug_enum_name_t::test_subtype_t::inner_enum2_t> debug_enum_name_t::test_subtype_t::_values_inner_enum2_t{
    debug_enum_name_t::test_subtype_t::INNER_ENUM2_ENUM_VALUE_11,
};
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
