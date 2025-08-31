// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_term_struct.h"

repeat_until_term_struct_t::repeat_until_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records1 = 0;
    m__raw_records1 = 0;
    m__io__raw_records1 = 0;
    m_records2 = 0;
    m__raw_records2 = 0;
    m__io__raw_records2 = 0;
    m_records3 = 0;
    m__raw_records3 = 0;
    m__io__raw_records3 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_until_term_struct_t::_read() {
    m__raw_records1 = new std::vector<std::string>();
    m__io__raw_records1 = new std::vector<kaitai::kstream*>();
    m_records1 = new std::vector<bytes_wrapper_t*>();
    {
        int i = 0;
        bytes_wrapper_t* _;
        do {
            std::string _buf = m__io->read_bytes_term(170, false, true, true);
            m__raw_records1->push_back(_buf);
            kaitai::kstream* io__raw_records1 = new kaitai::kstream(_buf);
            m__io__raw_records1->push_back(io__raw_records1);
            _ = new bytes_wrapper_t(io__raw_records1, this, m__root);
            m_records1->push_back(_);
            i++;
        } while (!(_->value().length() == 0));
    }
    m__raw_records2 = new std::vector<std::string>();
    m__io__raw_records2 = new std::vector<kaitai::kstream*>();
    m_records2 = new std::vector<bytes_wrapper_t*>();
    {
        int i = 0;
        bytes_wrapper_t* _;
        do {
            std::string _buf = m__io->read_bytes_term(170, true, true, true);
            m__raw_records2->push_back(_buf);
            kaitai::kstream* io__raw_records2 = new kaitai::kstream(_buf);
            m__io__raw_records2->push_back(io__raw_records2);
            _ = new bytes_wrapper_t(io__raw_records2, this, m__root);
            m_records2->push_back(_);
            i++;
        } while (!(_->value() != std::string("\xAA", 1)));
    }
    m__raw_records3 = new std::vector<std::string>();
    m__io__raw_records3 = new std::vector<kaitai::kstream*>();
    m_records3 = new std::vector<bytes_wrapper_t*>();
    {
        int i = 0;
        bytes_wrapper_t* _;
        do {
            std::string _buf = m__io->read_bytes_term(85, false, false, true);
            m__raw_records3->push_back(_buf);
            kaitai::kstream* io__raw_records3 = new kaitai::kstream(_buf);
            m__io__raw_records3->push_back(io__raw_records3);
            _ = new bytes_wrapper_t(io__raw_records3, this, m__root);
            m_records3->push_back(_);
            i++;
        } while (!(_->value() == records1()->back()->value()));
    }
}

repeat_until_term_struct_t::~repeat_until_term_struct_t() {
    _clean_up();
}

void repeat_until_term_struct_t::_clean_up() {
    if (m__raw_records1) {
        delete m__raw_records1; m__raw_records1 = 0;
    }
    if (m__io__raw_records1) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records1->begin(); it != m__io__raw_records1->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records1; m__io__raw_records1 = 0;
    }
    if (m_records1) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records1->begin(); it != m_records1->end(); ++it) {
            delete *it;
        }
        delete m_records1; m_records1 = 0;
    }
    if (m__raw_records2) {
        delete m__raw_records2; m__raw_records2 = 0;
    }
    if (m__io__raw_records2) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records2->begin(); it != m__io__raw_records2->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records2; m__io__raw_records2 = 0;
    }
    if (m_records2) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records2->begin(); it != m_records2->end(); ++it) {
            delete *it;
        }
        delete m_records2; m_records2 = 0;
    }
    if (m__raw_records3) {
        delete m__raw_records3; m__raw_records3 = 0;
    }
    if (m__io__raw_records3) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records3->begin(); it != m__io__raw_records3->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records3; m__io__raw_records3 = 0;
    }
    if (m_records3) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records3->begin(); it != m_records3->end(); ++it) {
            delete *it;
        }
        delete m_records3; m_records3 = 0;
    }
}

repeat_until_term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, repeat_until_term_struct_t* p__parent, repeat_until_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_until_term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

repeat_until_term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void repeat_until_term_struct_t::bytes_wrapper_t::_clean_up() {
}
