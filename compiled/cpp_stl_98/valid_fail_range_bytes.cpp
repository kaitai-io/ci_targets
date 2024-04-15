// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_range_bytes.h"
#include "kaitai/exceptions.h"

valid_fail_range_bytes_t::valid_fail_range_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_range_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_fail_range_bytes_t::_read() {
    m_foo = m__io->read_bytes(2);
    if (!(foo() >= std::string("\x50", 1))) {
        throw kaitai::validation_less_than_error<std::string>(std::string("\x50", 1), foo(), _io(), std::string("/seq/0"));
    }
    if (!(foo() <= std::string("\x50\x31", 2))) {
        throw kaitai::validation_greater_than_error<std::string>(std::string("\x50\x31", 2), foo(), _io(), std::string("/seq/0"));
    }
}

valid_fail_range_bytes_t::~valid_fail_range_bytes_t() {
    _clean_up();
}

void valid_fail_range_bytes_t::_clean_up() {
}
