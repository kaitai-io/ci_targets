#ifndef INSTANCE_IN_REPEAT_EXPR_H_
#define INSTANCE_IN_REPEAT_EXPR_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class instance_in_repeat_expr_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class instance_in_repeat_expr_t : public kaitai::kstruct {

public:
    class chunk_t;

    instance_in_repeat_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_in_repeat_expr_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~instance_in_repeat_expr_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, instance_in_repeat_expr_t* p__parent = 0, instance_in_repeat_expr_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~chunk_t();
        uint32_t offset() const { return m_offset; }
        uint32_t len() const { return m_len; }
        instance_in_repeat_expr_t* _root() const { return m__root; }
        instance_in_repeat_expr_t* _parent() const { return m__parent; }

    private:
        uint32_t m_offset;
        uint32_t m_len;
        instance_in_repeat_expr_t* m__root;
        instance_in_repeat_expr_t* m__parent;
    };

public:
    uint32_t num_chunks();
    std::vector<chunk_t*>* chunks() const { return m_chunks; }
    instance_in_repeat_expr_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_num_chunks;
    uint32_t m_num_chunks;
    std::vector<chunk_t*>* m_chunks;
    instance_in_repeat_expr_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // INSTANCE_IN_REPEAT_EXPR_H_
