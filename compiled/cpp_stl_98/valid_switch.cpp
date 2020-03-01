// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "valid_switch.h"
#include "kaitai/exceptions.h"

validSwitch_t::validSwitch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, validSwitch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void validSwitch_t::_read() {
    m_a = m__io->read_u1();
    if (!(a() == 80)) {
        throw kaitai::validation_not_equal_error<uint8_t>(80, a(), _io(), std::string("/seq/0"));
    }
    switch (a()) {
    case 80: {
        m_b = m__io->read_u2le();
        break;
    }
    default: {
        m_b = m__io->read_u2be();
        break;
    }
    }
    if (!(b() == 17217)) {
        throw kaitai::validation_not_equal_error<int32_t>(17217, b(), _io(), std::string("/seq/1"));
    }
}

validSwitch_t::~validSwitch_t() {
}
