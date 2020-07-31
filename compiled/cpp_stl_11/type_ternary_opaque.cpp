// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "type_ternary_opaque.h"
#include "term_strz.h"

type_ternary_opaque_t::type_ternary_opaque_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, type_ternary_opaque_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_dif_wo_hack = nullptr;
    m__io__raw_dif_wo_hack = nullptr;
    m_dif_with_hack = nullptr;
    m__io__raw_dif_with_hack = nullptr;
    f_is_hack = false;
    f_dif = false;
    _read();
}

void type_ternary_opaque_t::_read() {
    n_dif_wo_hack = true;
    if (!(is_hack())) {
        n_dif_wo_hack = false;
        m__raw_dif_wo_hack = m__io->read_bytes(12);
        m__io__raw_dif_wo_hack = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_dif_wo_hack));
        m_dif_wo_hack = std::unique_ptr<term_strz_t>(new term_strz_t(m__io__raw_dif_wo_hack.get()));
    }
    n_dif_with_hack = true;
    if (is_hack()) {
        n_dif_with_hack = false;
        m__raw__raw_dif_with_hack = m__io->read_bytes(12);
        m__raw_dif_with_hack = kaitai::kstream::process_xor_one(m__raw__raw_dif_with_hack, 3);
        m__io__raw_dif_with_hack = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_dif_with_hack));
        m_dif_with_hack = std::unique_ptr<term_strz_t>(new term_strz_t(m__io__raw_dif_with_hack.get()));
    }
}

type_ternary_opaque_t::~type_ternary_opaque_t() {
    if (!n_dif_wo_hack) {
    }
    if (!n_dif_with_hack) {
    }
}

bool type_ternary_opaque_t::is_hack() {
    if (f_is_hack)
        return m_is_hack;
    m_is_hack = false;
    f_is_hack = true;
    return m_is_hack;
}

term_strz_t* type_ternary_opaque_t::dif() {
    if (f_dif)
        return m_dif;
    m_dif = ((!(is_hack())) ? (dif_wo_hack()) : (dif_with_hack()));
    f_dif = true;
    return m_dif;
}
