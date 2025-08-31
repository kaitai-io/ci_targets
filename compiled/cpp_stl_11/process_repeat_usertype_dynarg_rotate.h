#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_repeat_usertype_dynarg_rotate_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_repeat_usertype_dynarg_rotate_t : public kaitai::kstruct {

public:
    class block_t;
    class blocks_b_wrapper_t;

    process_repeat_usertype_dynarg_rotate_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_repeat_usertype_dynarg_rotate_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~process_repeat_usertype_dynarg_rotate_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_rotate_t* p__parent = nullptr, process_repeat_usertype_dynarg_rotate_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();

    private:
        uint16_t m_a;
        process_repeat_usertype_dynarg_rotate_t* m__root;
        process_repeat_usertype_dynarg_rotate_t* m__parent;

    public:
        uint16_t a() const { return m_a; }
        process_repeat_usertype_dynarg_rotate_t* _root() const { return m__root; }
        process_repeat_usertype_dynarg_rotate_t* _parent() const { return m__parent; }
    };

    class blocks_b_wrapper_t : public kaitai::kstruct {

    public:

        blocks_b_wrapper_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_rotate_t* p__parent = nullptr, process_repeat_usertype_dynarg_rotate_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~blocks_b_wrapper_t();

    private:
        bool f_blocks_rol_0_b;
        uint8_t m_blocks_rol_0_b;

    public:
        uint8_t blocks_rol_0_b();

    private:
        bool f_blocks_rol_1_b;
        uint8_t m_blocks_rol_1_b;

    public:
        uint8_t blocks_rol_1_b();

    private:
        bool f_blocks_ror_0_b;
        uint8_t m_blocks_ror_0_b;

    public:
        uint8_t blocks_ror_0_b();

    private:
        bool f_blocks_ror_1_b;
        uint8_t m_blocks_ror_1_b;

    public:
        uint8_t blocks_ror_1_b();

    private:
        bool f_blocks_ror_2_b;
        uint8_t m_blocks_ror_2_b;

    public:
        uint8_t blocks_ror_2_b();

    private:
        uint8_t m_dummy;
        process_repeat_usertype_dynarg_rotate_t* m__root;
        process_repeat_usertype_dynarg_rotate_t* m__parent;

    public:
        uint8_t dummy() const { return m_dummy; }
        process_repeat_usertype_dynarg_rotate_t* _root() const { return m__root; }
        process_repeat_usertype_dynarg_rotate_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<block_t>>> m_blocks_rol;
    std::unique_ptr<std::vector<std::unique_ptr<block_t>>> m_blocks_ror;
    std::unique_ptr<blocks_b_wrapper_t> m_blocks_b;
    process_repeat_usertype_dynarg_rotate_t* m__root;
    kaitai::kstruct* m__parent;
    std::unique_ptr<std::vector<std::string>> m__raw_blocks_rol;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>> m__io__raw_blocks_rol;
    std::unique_ptr<std::vector<std::string>> m__raw__raw_blocks_rol;
    std::unique_ptr<std::vector<std::string>> m__raw_blocks_ror;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>> m__io__raw_blocks_ror;
    std::unique_ptr<std::vector<std::string>> m__raw__raw_blocks_ror;

public:
    std::vector<std::unique_ptr<block_t>>* blocks_rol() const { return m_blocks_rol.get(); }
    std::vector<std::unique_ptr<block_t>>* blocks_ror() const { return m_blocks_ror.get(); }
    blocks_b_wrapper_t* blocks_b() const { return m_blocks_b.get(); }
    process_repeat_usertype_dynarg_rotate_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_blocks_rol() const { return m__raw_blocks_rol.get(); }
    std::vector<std::unique_ptr<kaitai::kstream>>* _io__raw_blocks_rol() const { return m__io__raw_blocks_rol.get(); }
    std::vector<std::string>* _raw__raw_blocks_rol() const { return m__raw__raw_blocks_rol.get(); }
    std::vector<std::string>* _raw_blocks_ror() const { return m__raw_blocks_ror.get(); }
    std::vector<std::unique_ptr<kaitai::kstream>>* _io__raw_blocks_ror() const { return m__io__raw_blocks_ror.get(); }
    std::vector<std::string>* _raw__raw_blocks_ror() const { return m__raw__raw_blocks_ror.get(); }
};
