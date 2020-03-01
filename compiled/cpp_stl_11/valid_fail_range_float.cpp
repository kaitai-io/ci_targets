// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "valid_fail_range_float.h"
#include "kaitai/exceptions.h"

validFailRangeFloat_t::validFailRangeFloat_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, validFailRangeFloat_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void validFailRangeFloat_t::_read() {
    m_foo = m__io->read_f4le();
    if (!(foo() >= 0.2)) {
        throw kaitai::validation_less_than_error<float>(0.2, foo(), _io(), std::string("/seq/0"));
    }
    if (!(foo() <= 0.4)) {
        throw kaitai::validation_greater_than_error<float>(0.4, foo(), _io(), std::string("/seq/0"));
    }
}

validFailRangeFloat_t::~validFailRangeFloat_t() {
}
