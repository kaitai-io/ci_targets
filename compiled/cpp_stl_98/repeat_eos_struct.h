#ifndef REPEAT_EOS_STRUCT_H_
#define REPEAT_EOS_STRUCT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeatEosStruct_t : public kaitai::kstruct {

public:
    class chunk_t;

    repeatEosStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeatEosStruct_t* p__root = 0);

private:
    void _read();

public:
    ~repeatEosStruct_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, repeatEosStruct_t* p__parent = 0, repeatEosStruct_t* p__root = 0);

    private:
        void _read();

    public:
        ~chunk_t();

    private:
        uint32_t m_offset;
        uint32_t m_len;
        repeatEosStruct_t* m__root;
        repeatEosStruct_t* m__parent;

    public:
        uint32_t offset() const { return m_offset; }
        uint32_t len() const { return m_len; }
        repeatEosStruct_t* _root() const { return m__root; }
        repeatEosStruct_t* _parent() const { return m__parent; }
    };

private:
    std::vector<chunk_t*>* m_chunks;
    repeatEosStruct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<chunk_t*>* chunks() const { return m_chunks; }
    repeatEosStruct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_EOS_STRUCT_H_
