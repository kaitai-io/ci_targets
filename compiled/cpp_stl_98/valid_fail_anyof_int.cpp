// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_anyof_int.h"
#include "kaitai/exceptions.h"

valid_fail_anyof_int_t::valid_fail_anyof_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_anyof_int_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_fail_anyof_int_t::_read() {
    m_foo = m__io->read_u1();
    if (!( ((m_foo == 5) || (m_foo == 6) || (m_foo == 7) || (m_foo == 8) || (m_foo == 10) || (m_foo == 11) || (m_foo == 12) || (m_foo == 47)) )) {
        throw kaitai::validation_not_any_of_error<uint8_t>(m_foo, m__io, std::string("/seq/0"));
    }
}

valid_fail_anyof_int_t::~valid_fail_anyof_int_t() {
    _clean_up();
}

void valid_fail_anyof_int_t::_clean_up() {
}
