// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_array_int.h"

params_pass_array_int_t::params_pass_array_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_int_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_ints = nullptr;
    m_pass_ints = nullptr;
    m_pass_ints_calc = nullptr;
    f_ints_calc = false;
    _read();
}

void params_pass_array_int_t::_read() {
    int l_ints = 3;
    m_ints = std::unique_ptr<std::vector<uint16_t>>(new std::vector<uint16_t>());
    m_ints->reserve(l_ints);
    for (int i = 0; i < l_ints; i++) {
        m_ints->push_back(std::move(m__io->read_u2le()));
    }
    m_pass_ints = std::unique_ptr<wants_ints_t>(new wants_ints_t(ints(), m__io, this, m__root));
    m_pass_ints_calc = std::unique_ptr<wants_ints_t>(new wants_ints_t(ints_calc(), m__io, this, m__root));
}

params_pass_array_int_t::~params_pass_array_int_t() {
}

params_pass_array_int_t::wants_ints_t::wants_ints_t(std::vector<uint16_t>* p_nums, kaitai::kstream* p__io, params_pass_array_int_t* p__parent, params_pass_array_int_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_nums = p_nums;
    _read();
}

void params_pass_array_int_t::wants_ints_t::_read() {
}

params_pass_array_int_t::wants_ints_t::~wants_ints_t() {
}

std::vector<int32_t>* params_pass_array_int_t::ints_calc() {
    if (f_ints_calc)
        return m_ints_calc;
    m_ints_calc = std::unique_ptr<std::vector<int32_t>>(new std::vector<int32_t>{27643, 7});
    f_ints_calc = true;
    return m_ints_calc;
}
