// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_optional_id.h"
#include "kaitai/exceptions.h"

valid_optional_id_t::valid_optional_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_optional_id_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_optional_id_t::_read() {
    m__unnamed0 = m__io->read_bytes(6);
    if (!(_unnamed0() == std::string("\x50\x41\x43\x4B\x2D\x31", 6))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x31", 6), _unnamed0(), _io(), std::string("/seq/0"));
    }
    m__unnamed1 = m__io->read_u1();
    if (!(_unnamed1() == 255)) {
        throw kaitai::validation_not_equal_error<uint8_t>(255, _unnamed1(), _io(), std::string("/seq/1"));
    }
    m__unnamed2 = m__io->read_s1();
    {
        int8_t _ = _unnamed2();
        if (!(_ == -1)) {
            throw kaitai::validation_expr_error<int8_t>(_unnamed2(), _io(), std::string("/seq/2"));
        }
    }
}

valid_optional_id_t::~valid_optional_id_t() {
    _clean_up();
}

void valid_optional_id_t::_clean_up() {
}
