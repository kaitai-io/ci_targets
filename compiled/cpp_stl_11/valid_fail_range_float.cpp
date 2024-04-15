// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_range_float.h"
#include "kaitai/exceptions.h"

valid_fail_range_float_t::valid_fail_range_float_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_range_float_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void valid_fail_range_float_t::_read() {
    m_foo = m__io->read_f4le();
    if (!(foo() >= 0.2)) {
        throw kaitai::validation_less_than_error<float>(0.2, foo(), _io(), std::string("/seq/0"));
    }
    if (!(foo() <= 0.4)) {
        throw kaitai::validation_greater_than_error<float>(0.4, foo(), _io(), std::string("/seq/0"));
    }
}

valid_fail_range_float_t::~valid_fail_range_float_t() {
    _clean_up();
}

void valid_fail_range_float_t::_clean_up() {
}
