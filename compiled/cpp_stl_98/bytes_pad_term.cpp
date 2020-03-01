// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "bytes_pad_term.h"

bytesPadTerm_t::bytesPadTerm_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bytesPadTerm_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void bytesPadTerm_t::_read() {
    m_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
}

bytesPadTerm_t::~bytesPadTerm_t() {
}
