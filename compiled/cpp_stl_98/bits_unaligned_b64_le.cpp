// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_unaligned_b64_le.h"

bits_unaligned_b64_le_t::bits_unaligned_b64_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_unaligned_b64_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bits_unaligned_b64_le_t::_read() {
    m_a = m__io->read_bits_int_le(1);
    m_b = m__io->read_bits_int_le(64);
    m_c = m__io->read_bits_int_le(7);
}

bits_unaligned_b64_le_t::~bits_unaligned_b64_le_t() {
    _clean_up();
}

void bits_unaligned_b64_le_t::_clean_up() {
}
