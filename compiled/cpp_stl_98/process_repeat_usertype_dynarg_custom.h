#ifndef PROCESS_REPEAT_USERTYPE_DYNARG_CUSTOM_H_
#define PROCESS_REPEAT_USERTYPE_DYNARG_CUSTOM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_repeat_usertype_dynarg_custom_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_repeat_usertype_dynarg_custom_t : public kaitai::kstruct {

public:
    class block_t;
    class blocks_b_wrapper_t;

    process_repeat_usertype_dynarg_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, process_repeat_usertype_dynarg_custom_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~process_repeat_usertype_dynarg_custom_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_custom_t* p__parent = 0, process_repeat_usertype_dynarg_custom_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();
        uint32_t a() const { return m_a; }
        process_repeat_usertype_dynarg_custom_t* _root() const { return m__root; }
        process_repeat_usertype_dynarg_custom_t* _parent() const { return m__parent; }

    private:
        uint32_t m_a;
        process_repeat_usertype_dynarg_custom_t* m__root;
        process_repeat_usertype_dynarg_custom_t* m__parent;
    };

    class blocks_b_wrapper_t : public kaitai::kstruct {

    public:

        blocks_b_wrapper_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_custom_t* p__parent = 0, process_repeat_usertype_dynarg_custom_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~blocks_b_wrapper_t();
        uint8_t blocks_0_b();
        uint8_t blocks_1_b();
        uint8_t dummy() const { return m_dummy; }
        process_repeat_usertype_dynarg_custom_t* _root() const { return m__root; }
        process_repeat_usertype_dynarg_custom_t* _parent() const { return m__parent; }

    private:
        bool f_blocks_0_b;
        uint8_t m_blocks_0_b;
        bool f_blocks_1_b;
        uint8_t m_blocks_1_b;
        uint8_t m_dummy;
        process_repeat_usertype_dynarg_custom_t* m__root;
        process_repeat_usertype_dynarg_custom_t* m__parent;
    };

public:
    std::vector<block_t*>* blocks() const { return m_blocks; }
    blocks_b_wrapper_t* blocks_b() const { return m_blocks_b; }
    process_repeat_usertype_dynarg_custom_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_blocks() const { return m__raw_blocks; }
    std::vector<kaitai::kstream*>* _io__raw_blocks() const { return m__io__raw_blocks; }
    std::vector<std::string>* _raw__raw_blocks() const { return m__raw__raw_blocks; }

private:
    std::vector<block_t*>* m_blocks;
    blocks_b_wrapper_t* m_blocks_b;
    process_repeat_usertype_dynarg_custom_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_blocks;
    std::vector<kaitai::kstream*>* m__io__raw_blocks;
    std::vector<std::string>* m__raw__raw_blocks;
};

#endif  // PROCESS_REPEAT_USERTYPE_DYNARG_CUSTOM_H_
