// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_type_param.h"

nested_type_param_t::nested_type_param_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_type_param_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_seq = 0;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void nested_type_param_t::_read() {
    m_main_seq = new nested_t::my_type_t(5, m__io, this, m__root);
}

nested_type_param_t::~nested_type_param_t() {
    _cleanUp();
}

void nested_type_param_t::_cleanUp() {
    if (m_main_seq) {
        delete m_main_seq; m_main_seq = 0;
    }
}

nested_type_param_t::nested_t::nested_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_type_param_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void nested_type_param_t::nested_t::_read() {
}

nested_type_param_t::nested_t::~nested_t() {
    _cleanUp();
}

void nested_type_param_t::nested_t::_cleanUp() {
}

nested_type_param_t::nested_t::my_type_t::my_type_t(uint32_t p_my_len, kaitai::kstream* p__io, nested_type_param_t* p__parent, nested_type_param_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_my_len = p_my_len;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void nested_type_param_t::nested_t::my_type_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(my_len()), std::string("ASCII"));
}

nested_type_param_t::nested_t::my_type_t::~my_type_t() {
    _cleanUp();
}

void nested_type_param_t::nested_t::my_type_t::_cleanUp() {
}
