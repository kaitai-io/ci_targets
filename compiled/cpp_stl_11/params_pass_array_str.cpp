// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_array_str.h"

params_pass_array_str_t::params_pass_array_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_str_array = nullptr;
    m_pass_str_array = nullptr;
    m_pass_str_array_calc = nullptr;
    f_str_array_calc = false;
    _read();
}

void params_pass_array_str_t::_read() {
    m_str_array = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_str_array = 3;
    for (int i = 0; i < l_str_array; i++) {
        m_str_array->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes(2), "ASCII")));
    }
    m_pass_str_array = std::unique_ptr<wants_strs_t>(new wants_strs_t(str_array(), m__io, this, m__root));
    m_pass_str_array_calc = std::unique_ptr<wants_strs_t>(new wants_strs_t(str_array_calc(), m__io, this, m__root));
}

params_pass_array_str_t::~params_pass_array_str_t() {
    _clean_up();
}

void params_pass_array_str_t::_clean_up() {
}

params_pass_array_str_t::wants_strs_t::wants_strs_t(std::vector<std::string>* p_strs, kaitai::kstream* p__io, params_pass_array_str_t* p__parent, params_pass_array_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_strs = p_strs;
    _read();
}

void params_pass_array_str_t::wants_strs_t::_read() {
}

params_pass_array_str_t::wants_strs_t::~wants_strs_t() {
    _clean_up();
}

void params_pass_array_str_t::wants_strs_t::_clean_up() {
}

std::vector<std::string>* params_pass_array_str_t::str_array_calc() {
    if (f_str_array_calc)
        return m_str_array_calc.get();
    f_str_array_calc = true;
    m_str_array_calc = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>{std::string("aB"), std::string("Cd")});
    return m_str_array_calc.get();
}
