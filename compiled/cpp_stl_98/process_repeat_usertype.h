#ifndef PROCESS_REPEAT_USERTYPE_H_
#define PROCESS_REPEAT_USERTYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class processRepeatUsertype_t : public kaitai::kstruct {

public:
    class block_t;

    processRepeatUsertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, processRepeatUsertype_t* p__root = 0);

private:
    void _read();

public:
    ~processRepeatUsertype_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, processRepeatUsertype_t* p__parent = 0, processRepeatUsertype_t* p__root = 0);

    private:
        void _read();

    public:
        ~block_t();

    private:
        int32_t m_a;
        int8_t m_b;
        processRepeatUsertype_t* m__root;
        processRepeatUsertype_t* m__parent;

    public:
        int32_t a() const { return m_a; }
        int8_t b() const { return m_b; }
        processRepeatUsertype_t* _root() const { return m__root; }
        processRepeatUsertype_t* _parent() const { return m__parent; }
    };

private:
    std::vector<block_t*>* m_blocks;
    processRepeatUsertype_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_blocks;
    std::vector<kaitai::kstream*>* m__io__raw_blocks;
    std::vector<std::string>* m__raw__raw_blocks;

public:
    std::vector<block_t*>* blocks() const { return m_blocks; }
    processRepeatUsertype_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_blocks() const { return m__raw_blocks; }
    std::vector<kaitai::kstream*>* _io__raw_blocks() const { return m__io__raw_blocks; }
    std::vector<std::string>* _raw__raw_blocks() const { return m__raw__raw_blocks; }
};

#endif  // PROCESS_REPEAT_USERTYPE_H_
