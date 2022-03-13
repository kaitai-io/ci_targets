// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_signed_shift_b32_le.h"

bits_signed_shift_b32_le_t::bits_signed_shift_b32_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_signed_shift_b32_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bits_signed_shift_b32_le_t::_read() {
    m_a = m__io->read_bits_int_le(31);
    m_b = m__io->read_bits_int_le(9);
}

bits_signed_shift_b32_le_t::~bits_signed_shift_b32_le_t() {
    _clean_up();
}

void bits_signed_shift_b32_le_t::_clean_up() {
}
