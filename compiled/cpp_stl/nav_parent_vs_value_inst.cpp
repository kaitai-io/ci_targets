// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_vs_value_inst.h"

#include <iostream>
#include <fstream>

nav_parent_vs_value_inst_t::nav_parent_vs_value_inst_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, nav_parent_vs_value_inst_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_child = new child_obj_t(m__io, this, m__root);
}

nav_parent_vs_value_inst_t::~nav_parent_vs_value_inst_t() {
    delete m_child;
}

nav_parent_vs_value_inst_t::child_obj_t::child_obj_t(kaitai::kstream *p_io, nav_parent_vs_value_inst_t *p_parent, nav_parent_vs_value_inst_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    f_do_something = false;
}

nav_parent_vs_value_inst_t::child_obj_t::~child_obj_t() {
}

bool nav_parent_vs_value_inst_t::child_obj_t::do_something() {
    if (f_do_something)
        return m_do_something;
    m_do_something = ((_parent()->s1() == (std::string("foo"))) ? (true) : (false));
    f_do_something = true;
    return m_do_something;
}
