// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_contents.h"
#include "kaitai/exceptions.h"

valid_fail_contents_t::valid_fail_contents_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_contents_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void valid_fail_contents_t::_read() {
    m_foo = m__io->read_bytes(2);
    if (!(foo() == std::string("\x51\x41", 2))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x51\x41", 2), foo(), _io(), std::string("/seq/0"));
    }
}

valid_fail_contents_t::~valid_fail_contents_t() {
    _clean_up();
}

void valid_fail_contents_t::_clean_up() {
}
