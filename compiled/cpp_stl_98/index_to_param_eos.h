#ifndef INDEX_TO_PARAM_EOS_H_
#define INDEX_TO_PARAM_EOS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class index_to_param_eos_t : public kaitai::kstruct {

public:
    class block_t;

    index_to_param_eos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, index_to_param_eos_t* p__root = 0);

private:
    void _read();

public:
    ~index_to_param_eos_t();
    void _cleanUp();

    class block_t : public kaitai::kstruct {

    public:

        block_t(int32_t p_idx, kaitai::kstream* p__io, index_to_param_eos_t* p__parent = 0, index_to_param_eos_t* p__root = 0);

    private:
        void _read();

    public:
        ~block_t();
        void _cleanUp();

    private:
        std::string m_buf;
        int32_t m_idx;
        index_to_param_eos_t* m__root;
        index_to_param_eos_t* m__parent;

    public:
        std::string buf() const { return m_buf; }
        int32_t idx() const { return m_idx; }
        index_to_param_eos_t* _root() const { return m__root; }
        index_to_param_eos_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_qty;
    std::vector<uint32_t>* m_sizes;
    std::vector<block_t*>* m_blocks;
    index_to_param_eos_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<uint32_t>* sizes() const { return m_sizes; }
    std::vector<block_t*>* blocks() const { return m_blocks; }
    index_to_param_eos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // INDEX_TO_PARAM_EOS_H_
