// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_custom.h"
#include "my_custom_fx.h"
#include "custom_fx.h"

processCustom_t::processCustom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processCustom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_buf1 = nullptr;
    m__io_buf2 = nullptr;
    m__io_buf3 = nullptr;
    _read();
}

void processCustom_t::_read() {
    m__raw_buf1 = m__io->read_bytes(5);
    myCustomFx_t _process__raw_buf1(7, true, std::string("\x20\x30\x40", 3));
    m_buf1 = _process__raw_buf1.decode(m__raw_buf1);
    m__raw_buf2 = m__io->read_bytes(5);
    nested_t::deeply_t::customFx_t _process__raw_buf2(7);
    m_buf2 = _process__raw_buf2.decode(m__raw_buf2);
    m_key = m__io->read_u1();
    m__raw_buf3 = m__io->read_bytes(5);
    myCustomFx_t _process__raw_buf3(key(), false, std::string("\x00", 1));
    m_buf3 = _process__raw_buf3.decode(m__raw_buf3);
}

processCustom_t::~processCustom_t() {
}
