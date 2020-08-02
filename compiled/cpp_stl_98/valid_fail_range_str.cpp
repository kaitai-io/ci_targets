// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "valid_fail_range_str.h"
#include "kaitai/exceptions.h"

valid_fail_range_str_t::valid_fail_range_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_range_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void valid_fail_range_str_t::_read() {
    m_foo = kaitai::kstream::bytes_to_str(m__io->read_bytes(2), std::string("ASCII"));
    if (!((foo().compare(std::string("H@")) >= 0))) {
        throw kaitai::validation_less_than_error<std::string>(std::string("H@"), foo(), _io(), std::string("/seq/0"));
    }
    if (!((foo().compare(std::string("O~")) <= 0))) {
        throw kaitai::validation_greater_than_error<std::string>(std::string("O~"), foo(), _io(), std::string("/seq/0"));
    }
}

valid_fail_range_str_t::~valid_fail_range_str_t() {
    _cleanUp();
}

void valid_fail_range_str_t::_cleanUp() {
}
