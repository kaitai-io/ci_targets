// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "fixed_contents.h"
#include "kaitai/exceptions.h"

fixed_contents_t::fixed_contents_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, fixed_contents_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void fixed_contents_t::_read() {
    m_normal = m__io->read_bytes(kaitai::to_signed(6));
    if (!(normal() == std::string("\x50\x41\x43\x4B\x2D\x31", 6))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x31", 6), normal(), _io(), std::string("/seq/0"));
    }
    m_high_bit_8 = m__io->read_bytes(kaitai::to_signed(2));
    if (!(high_bit_8() == std::string("\xFF\xFF", 2))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\xFF\xFF", 2), high_bit_8(), _io(), std::string("/seq/1"));
    }
}

fixed_contents_t::~fixed_contents_t() {
}
