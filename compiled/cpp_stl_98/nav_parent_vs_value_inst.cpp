// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_vs_value_inst.h"

navParentVsValueInst_t::navParentVsValueInst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentVsValueInst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_child = 0;
    _read();
}

void navParentVsValueInst_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_child = new childObj_t(m__io, this, m__root);
}

navParentVsValueInst_t::~navParentVsValueInst_t() {
    delete m_child;
}

navParentVsValueInst_t::childObj_t::childObj_t(kaitai::kstream* p__io, navParentVsValueInst_t* p__parent, navParentVsValueInst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_do_something = false;
    _read();
}

void navParentVsValueInst_t::childObj_t::_read() {
}

navParentVsValueInst_t::childObj_t::~childObj_t() {
}

bool navParentVsValueInst_t::childObj_t::do_something() {
    if (f_do_something)
        return m_do_something;
    m_do_something = ((_parent()->s1() == (std::string("foo"))) ? (true) : (false));
    f_do_something = true;
    return m_do_something;
}
