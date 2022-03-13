// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_signed_res_b32_be.h"

bits_signed_res_b32_be_t::bits_signed_res_b32_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_signed_res_b32_be_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void bits_signed_res_b32_be_t::_read() {
    m_a = m__io->read_bits_int_be(32);
}

bits_signed_res_b32_be_t::~bits_signed_res_b32_be_t() {
    _clean_up();
}

void bits_signed_res_b32_be_t::_clean_up() {
}
