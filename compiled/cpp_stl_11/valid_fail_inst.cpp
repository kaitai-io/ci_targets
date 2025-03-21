// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_inst.h"
#include "kaitai/exceptions.h"

valid_fail_inst_t::valid_fail_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_inst = false;
    _read();
}

void valid_fail_inst_t::_read() {
    n_a = true;
    if (inst() >= 0) {
        n_a = false;
        m_a = m__io->read_u1();
    }
}

valid_fail_inst_t::~valid_fail_inst_t() {
    _clean_up();
}

void valid_fail_inst_t::_clean_up() {
    if (!n_a) {
    }
    if (f_inst) {
    }
}

uint8_t valid_fail_inst_t::inst() {
    if (f_inst)
        return m_inst;
    f_inst = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(5);
    m_inst = m__io->read_u1();
    if (!(m_inst == 80)) {
        throw kaitai::validation_not_equal_error<uint8_t>(80, m_inst, m__io, std::string("/instances/inst"));
    }
    m__io->seek(_pos);
    return m_inst;
}
