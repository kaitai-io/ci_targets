// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsPassUsertype : KaitaiStruct
    {
        public static ParamsPassUsertype FromFile(string fileName)
        {
            return new ParamsPassUsertype(new KaitaiStream(fileName));
        }

        public ParamsPassUsertype(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassUsertype p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _first = new Block(m_io, this, m_root);
            _one = new ParamType(First, m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ParamsPassUsertype p__parent = null, ParamsPassUsertype p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadU1();
            }
            public byte Foo { get { return _foo; } }
            public ParamsPassUsertype M_Root { get { return m_root; } }
            public ParamsPassUsertype M_Parent { get { return m_parent; } }
            private byte _foo;
            private ParamsPassUsertype m_root;
            private ParamsPassUsertype m_parent;
        }
        public partial class ParamType : KaitaiStruct
        {
            public ParamType(Block p_foo, KaitaiStream p__io, ParamsPassUsertype p__parent = null, ParamsPassUsertype p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _foo = p_foo;
                _read();
            }
            private void _read()
            {
                _buf = m_io.ReadBytes(Foo.Foo);
            }
            public byte[] Buf { get { return _buf; } }
            public Block Foo { get { return _foo; } }
            public ParamsPassUsertype M_Root { get { return m_root; } }
            public ParamsPassUsertype M_Parent { get { return m_parent; } }
            private byte[] _buf;
            private Block _foo;
            private ParamsPassUsertype m_root;
            private ParamsPassUsertype m_parent;
        }
        public Block First { get { return _first; } }
        public ParamType One { get { return _one; } }
        public ParamsPassUsertype M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Block _first;
        private ParamType _one;
        private ParamsPassUsertype m_root;
        private KaitaiStruct m_parent;
    }
}
