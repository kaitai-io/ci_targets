#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeatNStruct_t : public kaitai::kstruct {

public:
    class chunk_t;

    repeatNStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeatNStruct_t* p__root = nullptr);

private:
    void _read();

public:
    ~repeatNStruct_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, repeatNStruct_t* p__parent = nullptr, repeatNStruct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~chunk_t();

    private:
        uint32_t m_offset;
        uint32_t m_len;
        repeatNStruct_t* m__root;
        repeatNStruct_t* m__parent;

    public:
        uint32_t offset() const { return m_offset; }
        uint32_t len() const { return m_len; }
        repeatNStruct_t* _root() const { return m__root; }
        repeatNStruct_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_qty;
    std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>> m_chunks;
    repeatNStruct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<std::unique_ptr<chunk_t>>* chunks() const { return m_chunks.get(); }
    repeatNStruct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
