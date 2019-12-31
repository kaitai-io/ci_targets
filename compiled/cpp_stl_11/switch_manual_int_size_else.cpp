// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_manual_int_size_else.h"

switch_manual_int_size_else_t::switch_manual_int_size_else_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_manual_int_size_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = nullptr;
    _read();
}

void switch_manual_int_size_else_t::_read() {
    m_chunks = std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>>(new std::vector<std::unique_ptr<chunk_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_chunks->push_back(std::move(std::unique_ptr<chunk_t>(new chunk_t(m__io, this, m__root))));
            i++;
        }
    }
}

switch_manual_int_size_else_t::~switch_manual_int_size_else_t() {
}

switch_manual_int_size_else_t::chunk_t::chunk_t(kaitai::kstream* p__io, switch_manual_int_size_else_t* p__parent, switch_manual_int_size_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io__raw_body = nullptr;
    _read();
}

void switch_manual_int_size_else_t::chunk_t::_read() {
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    switch (code()) {
    case 17: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = std::unique_ptr<chunk_meta_t>(new chunk_meta_t(m__io__raw_body, this, m__root));
        break;
    }
    case 34: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = std::unique_ptr<chunk_dir_t>(new chunk_dir_t(m__io__raw_body, this, m__root));
        break;
    }
    default: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = std::unique_ptr<dummy_t>(new dummy_t(m__io__raw_body, this, m__root));
        break;
    }
    }
}

switch_manual_int_size_else_t::chunk_t::~chunk_t() {
    delete m__io__raw_body;
}

switch_manual_int_size_else_t::chunk_t::chunk_meta_t::chunk_meta_t(kaitai::kstream* p__io, switch_manual_int_size_else_t::chunk_t* p__parent, switch_manual_int_size_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_manual_int_size_else_t::chunk_t::chunk_meta_t::_read() {
    m_title = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    m_author = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
}

switch_manual_int_size_else_t::chunk_t::chunk_meta_t::~chunk_meta_t() {
}

switch_manual_int_size_else_t::chunk_t::chunk_dir_t::chunk_dir_t(kaitai::kstream* p__io, switch_manual_int_size_else_t::chunk_t* p__parent, switch_manual_int_size_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_entries = nullptr;
    _read();
}

void switch_manual_int_size_else_t::chunk_t::chunk_dir_t::_read() {
    m_entries = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_entries->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("UTF-8"))));
            i++;
        }
    }
}

switch_manual_int_size_else_t::chunk_t::chunk_dir_t::~chunk_dir_t() {
}

switch_manual_int_size_else_t::chunk_t::dummy_t::dummy_t(kaitai::kstream* p__io, switch_manual_int_size_else_t::chunk_t* p__parent, switch_manual_int_size_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_manual_int_size_else_t::chunk_t::dummy_t::_read() {
    m_rest = m__io->read_bytes_full();
}

switch_manual_int_size_else_t::chunk_t::dummy_t::~dummy_t() {
}
