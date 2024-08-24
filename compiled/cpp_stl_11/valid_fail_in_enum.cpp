// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_in_enum.h"
#include "kaitai/exceptions.h"
const std::set<std::underlying_type<valid_fail_in_enum_t::animal_t>::type> valid_fail_in_enum_t::_values_animal_t{4, 12};

valid_fail_in_enum_t::valid_fail_in_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_in_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void valid_fail_in_enum_t::_read() {
    m_foo = static_cast<valid_fail_in_enum_t::animal_t>(m__io->read_u4le());
    if (valid_fail_in_enum_t::_values_animal_t.find(m_foo) == valid_fail_in_enum_t::_values_animal_t.end()) {
        throw kaitai::validation_not_in_enum_error<valid_fail_in_enum_t::animal_t>(m_foo, m__io, std::string("/seq/0"));
    }
}

valid_fail_in_enum_t::~valid_fail_in_enum_t() {
    _clean_up();
}

void valid_fail_in_enum_t::_clean_up() {
}
