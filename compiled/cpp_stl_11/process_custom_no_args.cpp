// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_custom_no_args.h"
#include "custom_fx_no_args.h"

process_custom_no_args_t::process_custom_no_args_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_custom_no_args_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void process_custom_no_args_t::_read() {
    m__raw_buf = m__io->read_bytes(5);
    custom_fx_no_args_t _process__raw_buf;
    m_buf = _process__raw_buf.decode(m__raw_buf);
}

process_custom_no_args_t::~process_custom_no_args_t() {
    _clean_up();
}

void process_custom_no_args_t::_clean_up() {
}
