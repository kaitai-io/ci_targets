// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "name_clash_import_vs_inst.h"

name_clash_import_vs_inst_t::name_clash_import_vs_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, name_clash_import_vs_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_integers = 0;
    f_integers = false;
    f_std = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void name_clash_import_vs_inst_t::_read() {
}

name_clash_import_vs_inst_t::~name_clash_import_vs_inst_t() {
    _clean_up();
}

void name_clash_import_vs_inst_t::_clean_up() {
    if (f_integers) {
        if (m_integers) {
            delete m_integers; m_integers = 0;
        }
    }
}

integers_t* name_clash_import_vs_inst_t::integers() {
    if (f_integers)
        return m_integers;
    f_integers = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_integers = new integers_t(m__io);
    m__io->seek(_pos);
    return m_integers;
}

int32_t name_clash_import_vs_inst_t::std() {
    if (f_std)
        return m_std;
    f_std = true;
    m_std = 1 + 2;
    return m_std;
}
