// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_repeat_expr_invalid.h"

switch_repeat_expr_invalid_t::switch_repeat_expr_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_body = nullptr;
    m__raw_body = nullptr;
    m__io__raw_body = nullptr;
    _read();
}

void switch_repeat_expr_invalid_t::_read() {
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    int l_body = 1;
    m__raw_body = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m__raw_body->reserve(l_body);
    m__io__raw_body = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>>(new std::vector<std::unique_ptr<kaitai::kstream>>());
    m__io__raw_body->reserve(l_body);
    m_body = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstruct>>>(new std::vector<std::unique_ptr<kaitai::kstruct>>());
    m_body->reserve(l_body);
    for (int i = 0; i < l_body; i++) {
        switch (code()) {
        case 255: {
            m__raw_body->push_back(std::move(m__io->read_bytes(size())));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->emplace_back(io__raw_body);
            m_body->push_back(std::move(std::unique_ptr<one_t>(new one_t(io__raw_body, this, m__root))));
            break;
        }
        case 34: {
            m__raw_body->push_back(std::move(m__io->read_bytes(size())));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->emplace_back(io__raw_body);
            m_body->push_back(std::move(std::unique_ptr<two_t>(new two_t(io__raw_body, this, m__root))));
            break;
        }
        default: {
            m__raw_body->push_back(std::move(m__io->read_bytes(size())));
            break;
        }
        }
    }
}

switch_repeat_expr_invalid_t::~switch_repeat_expr_invalid_t() {
    _cleanUp();
}

void switch_repeat_expr_invalid_t::_cleanUp() {
}

switch_repeat_expr_invalid_t::one_t::one_t(kaitai::kstream* p__io, switch_repeat_expr_invalid_t* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_repeat_expr_invalid_t::one_t::_read() {
    m_first = m__io->read_bytes_full();
}

switch_repeat_expr_invalid_t::one_t::~one_t() {
    _cleanUp();
}

void switch_repeat_expr_invalid_t::one_t::_cleanUp() {
}

switch_repeat_expr_invalid_t::two_t::two_t(kaitai::kstream* p__io, switch_repeat_expr_invalid_t* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_repeat_expr_invalid_t::two_t::_read() {
    m_second = m__io->read_bytes_full();
}

switch_repeat_expr_invalid_t::two_t::~two_t() {
    _cleanUp();
}

void switch_repeat_expr_invalid_t::two_t::_cleanUp() {
}
