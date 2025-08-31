// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_array_io.h"

params_pass_array_io_t::params_pass_array_io_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_first = nullptr;
    m__io__raw_first = nullptr;
    m_one = nullptr;
    _read();
}

void params_pass_array_io_t::_read() {
    m__raw_first = m__io->read_bytes(1);
    m__io__raw_first = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_first));
    m_first = std::unique_ptr<block_t>(new block_t(m__io__raw_first.get(), this, m__root));
    m_one = std::unique_ptr<param_type_t>(new param_type_t(std::unique_ptr<std::vector<kaitai::kstream*>>(new std::vector<kaitai::kstream*>{first()->_io(), _root()->_io()}), m__io, this, m__root));
}

params_pass_array_io_t::~params_pass_array_io_t() {
    _clean_up();
}

void params_pass_array_io_t::_clean_up() {
}

params_pass_array_io_t::block_t::block_t(kaitai::kstream* p__io, params_pass_array_io_t* p__parent, params_pass_array_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_array_io_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_array_io_t::block_t::~block_t() {
    _clean_up();
}

void params_pass_array_io_t::block_t::_clean_up() {
}

params_pass_array_io_t::param_type_t::param_type_t(std::vector<kaitai::kstream*>* p_arg_streams, kaitai::kstream* p__io, params_pass_array_io_t* p__parent, params_pass_array_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg_streams = p_arg_streams;
    _read();
}

void params_pass_array_io_t::param_type_t::_read() {
    m_buf = m__io->read_bytes(arg_streams()->at(0)->size());
}

params_pass_array_io_t::param_type_t::~param_type_t() {
    _clean_up();
}

void params_pass_array_io_t::param_type_t::_clean_up() {
}
