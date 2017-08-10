// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsPassStruct : KaitaiStruct
    {
        public static ParamsPassStruct FromFile(string fileName)
        {
            return new ParamsPassStruct(new KaitaiStream(fileName));
        }

        public ParamsPassStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _first = new Block(m_io, this, m_root);
            _one = new StructType(First, m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ParamsPassStruct p__parent = null, ParamsPassStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _foo = m_io.ReadU1();
            }
            private byte _foo;
            private ParamsPassStruct m_root;
            private ParamsPassStruct m_parent;
            public byte Foo { get { return _foo; } }
            public ParamsPassStruct M_Root { get { return m_root; } }
            public ParamsPassStruct M_Parent { get { return m_parent; } }
        }
        public partial class StructType : KaitaiStruct
        {
            public StructType(KaitaiStruct p_foo, KaitaiStream p__io, ParamsPassStruct p__parent = null, ParamsPassStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _foo = p_foo;
                _read();
            }
            private void _read() {
                _bar = new Baz(Foo, m_io, this, m_root);
            }
            public partial class Baz : KaitaiStruct
            {
                public Baz(KaitaiStruct p_foo, KaitaiStream p__io, ParamsPassStruct.StructType p__parent = null, ParamsPassStruct p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _foo = p_foo;
                    _read();
                }
                private void _read() {
                    _qux = m_io.ReadU1();
                }
                private byte _qux;
                private KaitaiStruct _foo;
                private ParamsPassStruct m_root;
                private ParamsPassStruct.StructType m_parent;
                public byte Qux { get { return _qux; } }
                public KaitaiStruct Foo { get { return _foo; } }
                public ParamsPassStruct M_Root { get { return m_root; } }
                public ParamsPassStruct.StructType M_Parent { get { return m_parent; } }
            }
            private Baz _bar;
            private KaitaiStruct _foo;
            private ParamsPassStruct m_root;
            private ParamsPassStruct m_parent;
            public Baz Bar { get { return _bar; } }
            public KaitaiStruct Foo { get { return _foo; } }
            public ParamsPassStruct M_Root { get { return m_root; } }
            public ParamsPassStruct M_Parent { get { return m_parent; } }
        }
        private Block _first;
        private StructType _one;
        private ParamsPassStruct m_root;
        private KaitaiStruct m_parent;
        public Block First { get { return _first; } }
        public StructType One { get { return _one; } }
        public ParamsPassStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
