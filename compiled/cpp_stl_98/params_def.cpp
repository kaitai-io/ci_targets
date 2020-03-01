// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_def.h"

paramsDef_t::paramsDef_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsDef_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_len = p_len;
    m_has_trailer = p_has_trailer;
    _read();
}

void paramsDef_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
    n_trailer = true;
    if (has_trailer()) {
        n_trailer = false;
        m_trailer = m__io->read_u1();
    }
}

paramsDef_t::~paramsDef_t() {
    if (!n_trailer) {
    }
}
