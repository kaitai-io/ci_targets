// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ParamsPassArrayStruct : KaitaiStruct
    {
        public static ParamsPassArrayStruct FromFile(string fileName)
        {
            return new ParamsPassArrayStruct(new KaitaiStream(fileName));
        }

        public ParamsPassArrayStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassArrayStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneTwo = false;
            _read();
        }
        private void _read()
        {
            _one = new Foo(m_io, this, m_root);
            _two = new Bar(m_io, this, m_root);
            _passStructs = new StructType(OneTwo, m_io, this, m_root);
        }
        public partial class Bar : KaitaiStruct
        {
            public static Bar FromFile(string fileName)
            {
                return new Bar(new KaitaiStream(fileName));
            }

            public Bar(KaitaiStream p__io, ParamsPassArrayStruct p__parent = null, ParamsPassArrayStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _b = m_io.ReadU1();
            }
            private byte _b;
            private ParamsPassArrayStruct m_root;
            private ParamsPassArrayStruct m_parent;
            public byte B { get { return _b; } }
            public ParamsPassArrayStruct M_Root { get { return m_root; } }
            public ParamsPassArrayStruct M_Parent { get { return m_parent; } }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, ParamsPassArrayStruct p__parent = null, ParamsPassArrayStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _f = m_io.ReadU1();
            }
            private byte _f;
            private ParamsPassArrayStruct m_root;
            private ParamsPassArrayStruct m_parent;
            public byte F { get { return _f; } }
            public ParamsPassArrayStruct M_Root { get { return m_root; } }
            public ParamsPassArrayStruct M_Parent { get { return m_parent; } }
        }
        public partial class StructType : KaitaiStruct
        {
            public StructType(List<KaitaiStruct> p_structs, KaitaiStream p__io, ParamsPassArrayStruct p__parent = null, ParamsPassArrayStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _structs = p_structs;
                _read();
            }
            private void _read()
            {
            }
            private List<KaitaiStruct> _structs;
            private ParamsPassArrayStruct m_root;
            private ParamsPassArrayStruct m_parent;
            public List<KaitaiStruct> Structs { get { return _structs; } }
            public ParamsPassArrayStruct M_Root { get { return m_root; } }
            public ParamsPassArrayStruct M_Parent { get { return m_parent; } }
        }
        private bool f_oneTwo;
        private List<KaitaiStruct> _oneTwo;
        public List<KaitaiStruct> OneTwo
        {
            get
            {
                if (f_oneTwo)
                    return _oneTwo;
                _oneTwo = (List<KaitaiStruct>) (new List<KaitaiStruct> { One, Two });
                f_oneTwo = true;
                return _oneTwo;
            }
        }
        private Foo _one;
        private Bar _two;
        private StructType _passStructs;
        private ParamsPassArrayStruct m_root;
        private KaitaiStruct m_parent;
        public Foo One { get { return _one; } }
        public Bar Two { get { return _two; } }
        public StructType PassStructs { get { return _passStructs; } }
        public ParamsPassArrayStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
