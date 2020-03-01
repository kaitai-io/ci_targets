// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "debug_enum_name.h"

debugEnumName_t::debugEnumName_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debugEnumName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_array_of_ints = nullptr;
    m_test_type = nullptr;
}

void debugEnumName_t::_read() {
    m_one = static_cast<debugEnumName_t::testEnum1_t>(m__io->read_u1());
    int l_array_of_ints = 1;
    m_array_of_ints = std::unique_ptr<std::vector<testEnum2_t>>(new std::vector<testEnum2_t>());
    m_array_of_ints->reserve(l_array_of_ints);
    for (int i = 0; i < l_array_of_ints; i++) {
        m_array_of_ints->push_back(std::move(static_cast<debugEnumName_t::testEnum2_t>(m__io->read_u1())));
    }
    m_test_type = std::unique_ptr<testSubtype_t>(new testSubtype_t(m__io, this, m__root));
    m_test_type->_read();
}

debugEnumName_t::~debugEnumName_t() {
}

debugEnumName_t::testSubtype_t::testSubtype_t(kaitai::kstream* p__io, debugEnumName_t* p__parent, debugEnumName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_instance_field = false;
}

void debugEnumName_t::testSubtype_t::_read() {
    m_field1 = static_cast<debugEnumName_t::testSubtype_t::innerEnum1_t>(m__io->read_u1());
    m_field2 = m__io->read_u1();
}

debugEnumName_t::testSubtype_t::~testSubtype_t() {
}

debugEnumName_t::testSubtype_t::innerEnum2_t debugEnumName_t::testSubtype_t::instance_field() {
    if (f_instance_field)
        return m_instance_field;
    m_instance_field = static_cast<debugEnumName_t::testSubtype_t::innerEnum2_t>((field2() & 15));
    f_instance_field = true;
    return m_instance_field;
}
