// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "valid_not_parsed_if.h"

#include <kaitai/exceptions.h>

valid_not_parsed_if_t::valid_not_parsed_if_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_not_parsed_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void valid_not_parsed_if_t::_read() {
    n_not_parsed = true;
    if (false) {
        n_not_parsed = false;
        m_not_parsed = m__io->read_u1();
        if (!(not_parsed() == 42)) {
            throw kaitai::validation_not_equal_error<uint8_t>(42, not_parsed(), _io(), std::string("/seq/0"));
        }
    }
    n_parsed = true;
    if (true) {
        n_parsed = false;
        m_parsed = m__io->read_u1();
        if (!(parsed() == 80)) {
            throw kaitai::validation_not_equal_error<uint8_t>(80, parsed(), _io(), std::string("/seq/1"));
        }
    }
}

valid_not_parsed_if_t::~valid_not_parsed_if_t() {
    if (!n_not_parsed) {
    }
    if (!n_parsed) {
    }
}
