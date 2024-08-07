// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_repeat_expr.h"
#include "kaitai/exceptions.h"

valid_fail_repeat_expr_t::valid_fail_repeat_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_repeat_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_foo = nullptr;
    _read();
}

void valid_fail_repeat_expr_t::_read() {
    m_foo = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_foo->push_back(std::move(m__io->read_bytes(4)));
            {
                std::string _ = m_foo->at(i);
                if (!(_ != std::string("\x00\x12\x34\x56", 4))) {
                    throw kaitai::validation_expr_error<std::string>(m_foo->at(i), m__io, std::string("/seq/0"));
                }
            }
            i++;
        }
    }
}

valid_fail_repeat_expr_t::~valid_fail_repeat_expr_t() {
    _clean_up();
}

void valid_fail_repeat_expr_t::_clean_up() {
}
