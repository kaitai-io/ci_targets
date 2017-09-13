#ifndef REPEAT_N_STRUCT_H_
#define REPEAT_N_STRUCT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class repeat_n_struct_t : public kaitai::kstruct {

public:
    class chunk_t;

    repeat_n_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_n_struct_t* p__root = 0);

private:
    void _read();

public:
    ~repeat_n_struct_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, repeat_n_struct_t* p__parent = 0, repeat_n_struct_t* p__root = 0);

    private:
        void _read();

    public:
        ~chunk_t();

    private:
        uint32_t m_offset;
        uint32_t m_len;
        repeat_n_struct_t* m__root;
        repeat_n_struct_t* m__parent;

    public:
        uint32_t offset() const { return m_offset; }
        uint32_t len() const { return m_len; }
        repeat_n_struct_t* _root() const { return m__root; }
        repeat_n_struct_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_qty;
    std::vector<chunk_t*>* m_chunks;
    repeat_n_struct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<chunk_t*>* chunks() const { return m_chunks; }
    repeat_n_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_N_STRUCT_H_
