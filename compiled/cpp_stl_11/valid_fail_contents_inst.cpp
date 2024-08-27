// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_contents_inst.h"

valid_fail_contents_inst_t::valid_fail_contents_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_contents_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_foo = false;
    _read();
}

void valid_fail_contents_inst_t::_read() {
    n_a = true;
    if (foo().length() == 0) {
        n_a = false;
        m_a = m__io->read_bytes(0);
    }
}

valid_fail_contents_inst_t::~valid_fail_contents_inst_t() {
    _clean_up();
}

void valid_fail_contents_inst_t::_clean_up() {
    if (!n_a) {
    }
    if (f_foo) {
    }
}

std::string valid_fail_contents_inst_t::foo() {
    if (f_foo)
        return m_foo;
    f_foo = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_foo = m__io->read_bytes(2);
    m__io->seek(_pos);
    return m_foo;
}
