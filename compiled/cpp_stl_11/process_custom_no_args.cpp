// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_custom_no_args.h"
#include "custom_fx_no_args.h"

processCustomNoArgs_t::processCustomNoArgs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processCustomNoArgs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_buf = nullptr;
    _read();
}

void processCustomNoArgs_t::_read() {
    m__raw_buf = m__io->read_bytes(5);
    customFxNoArgs_t _process__raw_buf;
    m_buf = _process__raw_buf.decode(m__raw_buf);
}

processCustomNoArgs_t::~processCustomNoArgs_t() {
}
