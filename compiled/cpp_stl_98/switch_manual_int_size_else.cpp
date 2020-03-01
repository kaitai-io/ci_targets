// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_manual_int_size_else.h"

switchManualIntSizeElse_t::switchManualIntSizeElse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switchManualIntSizeElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = 0;
    _read();
}

void switchManualIntSizeElse_t::_read() {
    m_chunks = new std::vector<chunk_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_chunks->push_back(new chunk_t(m__io, this, m__root));
            i++;
        }
    }
}

switchManualIntSizeElse_t::~switchManualIntSizeElse_t() {
    for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
        delete *it;
    }
    delete m_chunks;
}

switchManualIntSizeElse_t::chunk_t::chunk_t(kaitai::kstream* p__io, switchManualIntSizeElse_t* p__parent, switchManualIntSizeElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io__raw_body = 0;
    _read();
}

void switchManualIntSizeElse_t::chunk_t::_read() {
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    switch (code()) {
    case 17: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new chunkMeta_t(m__io__raw_body, this, m__root);
        break;
    }
    case 34: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new chunkDir_t(m__io__raw_body, this, m__root);
        break;
    }
    default: {
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new dummy_t(m__io__raw_body, this, m__root);
        break;
    }
    }
}

switchManualIntSizeElse_t::chunk_t::~chunk_t() {
    delete m__io__raw_body;
}

switchManualIntSizeElse_t::chunk_t::chunkMeta_t::chunkMeta_t(kaitai::kstream* p__io, switchManualIntSizeElse_t::chunk_t* p__parent, switchManualIntSizeElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualIntSizeElse_t::chunk_t::chunkMeta_t::_read() {
    m_title = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    m_author = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
}

switchManualIntSizeElse_t::chunk_t::chunkMeta_t::~chunkMeta_t() {
}

switchManualIntSizeElse_t::chunk_t::chunkDir_t::chunkDir_t(kaitai::kstream* p__io, switchManualIntSizeElse_t::chunk_t* p__parent, switchManualIntSizeElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_entries = 0;
    _read();
}

void switchManualIntSizeElse_t::chunk_t::chunkDir_t::_read() {
    m_entries = new std::vector<std::string>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_entries->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("UTF-8")));
            i++;
        }
    }
}

switchManualIntSizeElse_t::chunk_t::chunkDir_t::~chunkDir_t() {
    delete m_entries;
}

switchManualIntSizeElse_t::chunk_t::dummy_t::dummy_t(kaitai::kstream* p__io, switchManualIntSizeElse_t::chunk_t* p__parent, switchManualIntSizeElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualIntSizeElse_t::chunk_t::dummy_t::_read() {
    m_rest = m__io->read_bytes_full();
}

switchManualIntSizeElse_t::chunk_t::dummy_t::~dummy_t() {
}
