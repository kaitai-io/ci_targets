// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_eq_int.h"
#include "kaitai/exceptions.h"

valid_fail_eq_int_t::valid_fail_eq_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_eq_int_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void valid_fail_eq_int_t::_read() {
    m_foo = m__io->read_u1();
    if (!(foo() == 123)) {
        throw kaitai::validation_not_equal_error<uint8_t>(123, foo(), _io(), std::string("/seq/0"));
    }
}

valid_fail_eq_int_t::~valid_fail_eq_int_t() {
    _clean_up();
}

void valid_fail_eq_int_t::_clean_up() {
}
