// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nested_same_name2.h"

nested_same_name2_t::nested_same_name2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_data = 0;
    m_dummy = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_same_name2_t::_read() {
    m_version = m__io->read_u4le();
    m_main_data = new main_t(m__io, this, m__root);
    m_dummy = new dummy_obj_t(m__io, this, m__root);
}

nested_same_name2_t::~nested_same_name2_t() {
    _clean_up();
}

void nested_same_name2_t::_clean_up() {
    if (m_main_data) {
        delete m_main_data; m_main_data = 0;
    }
    if (m_dummy) {
        delete m_dummy; m_dummy = 0;
    }
}

nested_same_name2_t::dummy_obj_t::dummy_obj_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_same_name2_t::dummy_obj_t::_read() {
    m_dummy_size = m__io->read_s4le();
    m_foo = new foo_obj_t(m__io, this, m__root);
}

nested_same_name2_t::dummy_obj_t::~dummy_obj_t() {
    _clean_up();
}

void nested_same_name2_t::dummy_obj_t::_clean_up() {
    if (m_foo) {
        delete m_foo; m_foo = 0;
    }
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::dummy_obj_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_same_name2_t::dummy_obj_t::foo_obj_t::_read() {
    m_data2 = m__io->read_bytes((_parent()->dummy_size() * 2));
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::~foo_obj_t() {
    _clean_up();
}

void nested_same_name2_t::dummy_obj_t::foo_obj_t::_clean_up() {
}

nested_same_name2_t::main_t::main_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_same_name2_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = new foo_obj_t(m__io, this, m__root);
}

nested_same_name2_t::main_t::~main_t() {
    _clean_up();
}

void nested_same_name2_t::main_t::_clean_up() {
    if (m_foo) {
        delete m_foo; m_foo = 0;
    }
}

nested_same_name2_t::main_t::foo_obj_t::foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::main_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_same_name2_t::main_t::foo_obj_t::_read() {
    m_data1 = m__io->read_bytes((_parent()->main_size() * 2));
}

nested_same_name2_t::main_t::foo_obj_t::~foo_obj_t() {
    _clean_up();
}

void nested_same_name2_t::main_t::foo_obj_t::_clean_up() {
}
