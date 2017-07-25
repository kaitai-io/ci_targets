// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_repeat_expr.h"



switch_repeat_expr_t::switch_repeat_expr_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_repeat_expr_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void switch_repeat_expr_t::_read() {
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    int l_body = 1;
    m__raw_body = new std::vector<std::string>();
    m__raw_body->reserve(l_body);
    m__io__raw_body = new std::vector<kaitai::kstream*>();
    m__io__raw_body->reserve(l_body);
    m_body = new std::vector<kaitai::kstruct*>();
    m_body->reserve(l_body);
    for (int i = 0; i < l_body; i++) {
        n_body = true;
        switch (code()) {
        case 17: {
            n_body = false;
            m__raw_body->push_back(m__io->read_bytes(size()));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->push_back(io__raw_body);
            m_body->push_back(new one_t(io__raw_body, this, m__root));
            break;
        }
        case 34: {
            n_body = false;
            m__raw_body->push_back(m__io->read_bytes(size()));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->push_back(io__raw_body);
            m_body->push_back(new two_t(io__raw_body, this, m__root));
            break;
        }
        default: {
            m__raw_body->push_back(m__io->read_bytes(size()));
            break;
        }
        }
    }
}

switch_repeat_expr_t::~switch_repeat_expr_t() {
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // size: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    if (!n_body) {
        // body: AnyType, isArray=true, hasRaw=true, hasIO=true
        delete m__raw_body;
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_body->begin(); it != m__io__raw_body->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_body;
        for (std::vector<kaitai::kstruct*>::iterator it = m_body->begin(); it != m_body->end(); ++it) {
            delete *it;
        }
        delete m_body;
    }
}

switch_repeat_expr_t::one_t::one_t(kaitai::kstream *p_io, switch_repeat_expr_t* p_parent, switch_repeat_expr_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_repeat_expr_t::one_t::_read() {
    m_first = m__io->read_bytes_full();
}

switch_repeat_expr_t::one_t::~one_t() {
    // first: BytesEosType(None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}

switch_repeat_expr_t::two_t::two_t(kaitai::kstream *p_io, switch_repeat_expr_t* p_parent, switch_repeat_expr_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_repeat_expr_t::two_t::_read() {
    m_second = m__io->read_bytes_full();
}

switch_repeat_expr_t::two_t::~two_t() {
    // second: BytesEosType(None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}
