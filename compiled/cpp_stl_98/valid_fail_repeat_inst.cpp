// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_repeat_inst.h"
#include "kaitai/exceptions.h"

valid_fail_repeat_inst_t::valid_fail_repeat_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_repeat_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_inst = 0;
    f_inst = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_fail_repeat_inst_t::_read() {
    n_a = true;
    if (inst()->size() == 0) {
        n_a = false;
        m_a = m__io->read_bytes(0);
    }
}

valid_fail_repeat_inst_t::~valid_fail_repeat_inst_t() {
    _clean_up();
}

void valid_fail_repeat_inst_t::_clean_up() {
    if (!n_a) {
    }
    if (f_inst) {
        if (m_inst) {
            delete m_inst; m_inst = 0;
        }
    }
}

std::vector<uint32_t>* valid_fail_repeat_inst_t::inst() {
    if (f_inst)
        return m_inst;
    f_inst = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_inst = new std::vector<uint32_t>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_inst->push_back(m__io->read_u4be());
            if (!(m_inst->at(i) == 305419896)) {
                throw kaitai::validation_not_equal_error<uint32_t>(305419896, m_inst->at(i), m__io, std::string("/instances/inst"));
            }
            i++;
        }
    }
    m__io->seek(_pos);
    return m_inst;
}
