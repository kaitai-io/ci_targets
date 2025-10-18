#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class index_to_param_eos_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class index_to_param_eos_t : public kaitai::kstruct {

public:
    class block_t;

    index_to_param_eos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, index_to_param_eos_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~index_to_param_eos_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(int32_t p_idx, kaitai::kstream* p__io, index_to_param_eos_t* p__parent = nullptr, index_to_param_eos_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();
        std::string buf() const { return m_buf; }
        int32_t idx() const { return m_idx; }
        index_to_param_eos_t* _root() const { return m__root; }
        index_to_param_eos_t* _parent() const { return m__parent; }

    private:
        std::string m_buf;
        int32_t m_idx;
        index_to_param_eos_t* m__root;
        index_to_param_eos_t* m__parent;
    };

public:
    uint32_t qty() const { return m_qty; }
    std::vector<uint32_t>* sizes() const { return m_sizes.get(); }
    std::vector<std::unique_ptr<block_t>>* blocks() const { return m_blocks.get(); }
    index_to_param_eos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    uint32_t m_qty;
    std::unique_ptr<std::vector<uint32_t>> m_sizes;
    std::unique_ptr<std::vector<std::unique_ptr<block_t>>> m_blocks;
    index_to_param_eos_t* m__root;
    kaitai::kstruct* m__parent;
};
